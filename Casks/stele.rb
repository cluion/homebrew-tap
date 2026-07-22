cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "19243b9c4fb191b441a364ed0735c8c286282fd3f6d7b4d38aa51f033972b290",
         intel: "2edda21f18b40bebdf465efb779644af6f095d61ef948d0bc4d55a8748e5f9e6"

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
