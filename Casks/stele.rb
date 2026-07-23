cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.18.0"
  sha256 arm:   "ccf13291b327a1ab1df2bc4a3ec0ced675d08324ddf195bebcda8fe81682b1b6",
         intel: "b6657a498891ccc948f8fc50ddd0a46122ed97d681995e632d93bda35adeb8a5"

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
