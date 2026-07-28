cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.26.0"
  sha256 arm:   "7d3e1dfc17fb069ff6913680ba929a3fcc8815d756c55299b02fa28a0fbe4511",
         intel: "b187095a45a76e502aafcbd7f843d12484cb77d1ddc075cb8ea90840d63259d6"

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
