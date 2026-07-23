cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.17.0"
  sha256 arm:   "c0710ae7e1f6b87f8d8bbf80a0fa24823b71034e41ef848717ce0d9fb9759f0a",
         intel: "23e83515f07b4c6ac6350d4d8fe995992e33928bd6ac4712e7bff1ae31cbebd1"

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
