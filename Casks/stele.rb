cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.20.1"
  sha256 arm:   "bd7f6f8ad9b98348422165e1d8066450cdb717a7da0be66361f48a4a2b6416bd",
         intel: "8804c41ada1b69d1bc6808b146123ec15f926b2fd86f4f1bf8797fa517fe962a"

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
