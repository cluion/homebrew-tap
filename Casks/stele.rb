cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.19.0"
  sha256 arm:   "dada25d0f0c8f755c71192026ac71d26b541008c62e9cdd4b457546e7a139e62",
         intel: "848bcb0ba8510cd767b893924a5f815bfdbd2810b624e762d1e9fa710f766e85"

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
