cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.16.0"
  sha256 arm:   "36ebcb7f1f10b90d38cf863ffe843e085edb09afe4cbc1927a5682c78e65e170",
         intel: "315554d3167d1b4d8b052aedc3f4ea9cb3d23dea2b9d7a84295c1a6fcf8f1dd3"

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
