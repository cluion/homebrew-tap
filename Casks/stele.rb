cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.14.0"
  sha256 arm:   "e777d92afeff3754fad60019ac4ba91d3cb95e171f0152a4770844f508496711",
         intel: "30b0ac26a7e4e2f59e98a42c6bc494e718a6431b6f84a6489a492421a8add294"

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
