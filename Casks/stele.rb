cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.25.1"
  sha256 arm:   "2e5f4b734665ea19188b6c0dc6ae648229855779d5218268dda6f337766c5cfd",
         intel: "f1f9ed1addafe1d8249f1ff8ba26f7ec684419753cc9a3af9f2d06acdfeafd76"

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
