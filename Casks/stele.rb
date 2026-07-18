cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "34e2d36af5e134282972fc79e1fd76494c11337e2846ba1125c69db6611268a1",
         intel: "c352286267414fc7e183598a808084275e5e7e7428875dc4aef120c833cdc4c2"

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
