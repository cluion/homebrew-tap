cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "49278d21ffbf3261b3a2329d3d0c46fa481682236085fa12522f306eaad50633",
         intel: "548a74a78263c576e1b8f9715295da0fd33431822f579519bf3b534b34ac68a6"

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
