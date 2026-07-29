cask "stele" do
  arch arm: "arm64", intel: "x64"

  version "0.27.0"
  sha256 arm:   "4525f7210085b6e3bbcb522e4550d0aac8ee4e364fc5c53fc31fb1db4b1d3e25",
         intel: "205780ec2cb8435700d334d665ba843b5b1065d98cb95f47ecb8d0986846bb8b"

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
