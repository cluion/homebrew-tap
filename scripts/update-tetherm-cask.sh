#!/usr/bin/env bash
set -euo pipefail

readonly repository="cluion/tetherm"
readonly template="Templates/tetherm.rb.in"
readonly output="Casks/tetherm.rb"

releases_json="$(gh api "repos/${repository}/releases?per_page=20")"
release_json="$(jq -cr '[.[] | select(.draft == false and .prerelease == false)][0] // empty' <<<"${releases_json}")"

if [[ -z "${release_json}" ]]
then
  echo "No published Tetherm release; leaving the Cask unchanged."
  exit 0
fi

tag="$(jq -er '.tag_name' <<<"${release_json}")"
version="${tag#v}"

if [[ "${tag}" != "v${version}" || ! "${version}" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]
then
  echo "Unsupported Tetherm release tag: ${tag}" >&2
  exit 1
fi

archive="tetherm-${version}-macos-universal.zip"
archive_id="$(jq -er --arg name "${archive}" '.assets[] | select(.name == $name) | .id' <<<"${release_json}")"
checksums_id="$(jq -er '.assets[] | select(.name == "SHA256SUMS") | .id' <<<"${release_json}")"
temporary_directory="$(mktemp -d)"
trap 'rm -rf "${temporary_directory}"' EXIT

gh api \
  -H "Accept: application/octet-stream" \
  "repos/${repository}/releases/assets/${checksums_id}" \
  >"${temporary_directory}/SHA256SUMS"
gh api \
  -H "Accept: application/octet-stream" \
  "repos/${repository}/releases/assets/${archive_id}" \
  >"${temporary_directory}/${archive}"

expected_sha256="$(awk -v archive="${archive}" '$2 == archive { print $1 }' "${temporary_directory}/SHA256SUMS")"
actual_sha256="$(sha256sum "${temporary_directory}/${archive}" | awk '{ print $1 }')"

if [[ ! "${expected_sha256}" =~ ^[0-9a-f]{64}$ ]]
then
  echo "SHA256SUMS does not contain a valid checksum for ${archive}." >&2
  exit 1
fi

if [[ "${actual_sha256}" != "${expected_sha256}" ]]
then
  echo "Checksum mismatch for ${archive}." >&2
  exit 1
fi

mkdir -p "$(dirname "${output}")"
sed \
  -e "s/@VERSION@/${version}/g" \
  -e "s/@SHA256@/${actual_sha256}/g" \
  "${template}" >"${output}"

ruby -c "${output}"
