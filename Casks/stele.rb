cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.23.0"
  sha256 arm:   "ec8a0b64eeb633efffb0c8d7c2ebe1d6b631eaf57ea5fdbc26f27367fec2d62a",
         intel: "7d8d5a2b94529871300e781b0cae998919970411ea9c68aa43eb429caa68e7e9"

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
