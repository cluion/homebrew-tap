cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.15.0"
  sha256 arm:   "16ab0c69fe8d41462f403c09a14aec402916ead7e2c2d680d77babad66fc44ff",
         intel: "7f28100cd87f8fac2b7332d0e91787e7c3340f24327e928b8641c35150cddf21"

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
