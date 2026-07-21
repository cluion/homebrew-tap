cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "8cfcd0b3bb2d1af567bde39652e2514532a9d0c4d9966173cea06043b4635516",
         intel: "fb8a95834c112831c80d60fd354b8bf446dfa4adcb7b5de4336bd4eb8d7e804a"

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
