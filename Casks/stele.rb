cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.24.0"
  sha256 arm:   "9eeaebce32e99bc3ca601eb480fa79ca31cd1e50e9ca7d883815b2fbdf53686f",
         intel: "c2b7cd78e154889311417653e5a620b26b0d10ba40b0dd02ba4b9f3d761b8252"

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
