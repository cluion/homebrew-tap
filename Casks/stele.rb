cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.22.0"
  sha256 arm:   "dec543ee6ab3fb6c629feb3c61c287af0823f573ee99519b93f945c83c9c0e09",
         intel: "2f56845afed23ba98230ffb185f55066b27629cd7f3abf4528ad32ae42cba121"

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
