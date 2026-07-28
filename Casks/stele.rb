cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.25.0"
  sha256 arm:   "c6863b379e691ce595ff7df53691e5fe0fabeb3effe5f18b317d20af58c176af",
         intel: "37d7050c537d4591501d860c8d1ede9fc19ea86db45717bbb953a52cc33d0c99"

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
