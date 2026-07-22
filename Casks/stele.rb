cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "a132081b018b741ccfb37f3cb548ad78159937ae0bc6055e00fa84b7f9191bf6",
         intel: "016dd6761bb2a0bf56dd0e6c6b12d7616ce56db83cf46db1e80e50a2582a9fd8"

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
