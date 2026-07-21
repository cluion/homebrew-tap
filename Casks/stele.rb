cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "2999ad88b0b823b6049f3d092c7e8e5a44479ef0415a6ed8f66e23fa3043ca2a",
         intel: "7307c4bdd2fd5ba2b54ec76717f4d8607e5b2b1399b49fc159f9c12186ec8f4e"

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
