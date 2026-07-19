cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "112bfaaaee121cc04a981d07e7b1b4c551c6c89a08a19a8c7a9730b26cfcb401",
         intel: "3b39291f521bd8dd8fa7ccb8b7ff9f55d700e65f58cf8d1b030a5306e4f68387"

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
