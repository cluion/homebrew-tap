cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.21.0"
  sha256 arm:   "fadef6061843c9af7ac3e05100b2440b0d6b3126b8b91444e2211e643d41363e",
         intel: "3687e49c33ea283a3fe15358e227bb5e63bdf6cbfb2838579dac5f3b76f68694"

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
