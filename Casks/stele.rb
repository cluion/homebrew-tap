cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.28.0"
  sha256 arm:   "5279952f7eaf17d3cd1376f18df66cc86e90c410e996e1119899f2dce98d020f",
         intel: "40383cf6b99ae5b1f51fc8ff9441d866c0b05509740a1bac6cbdc605ee7f922d"

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
