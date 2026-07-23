cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.13.0"
  sha256 arm:   "dbd56447b61ccd9c00e103fe184e3a27f779a69b2b000466f33021366744b80c",
         intel: "579a426a62d45adbf8a5699ad059fa2c2e20754829ea008a202f60aeb0a0ed58"

  url "https://github.com/cluion/stele/releases/download/v#{version}/Stele-#{version}-#{arch}.dmg",
      verified: "github.com/cluion/stele/"
  name "Stele"
  desc "Local-first, end-to-end encrypted, self-hostable knowledge base"
  homepage "https://github.com/cluion/stele"

  depends_on macos: :big_sur

  app "Stele.app"

  caveats <<~EOS
    Stele is not code-signed. On first launch, right-click Stele.app in
    Finder and choose "Open" to get past Gatekeeper (only needed once).

    To skip that step, reinstall with:
      brew install --cask --no-quarantine cluion/tap/stele
  EOS
end
