cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.21.1"
  sha256 arm:   "bce2c4c8d291c55b2a7fb376f35bf50be745ea709dc0790e5521d399351281dc",
         intel: "2edbc5a2263e1282c8fe44dd2fd1aadaf2eeca11058c8b8968aebfc8de081e53"

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
