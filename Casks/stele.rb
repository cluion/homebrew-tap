cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.20.0"
  sha256 arm:   "862217aa586a42080158927a2e027f43cd7cc1daa8b6ea25b61ea2c6bda2da44",
         intel: "b67b311614335a278c33593946b4854e4cffe951f73e49979dc7870ae3d6bcf3"

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
