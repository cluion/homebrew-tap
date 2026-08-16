cask "tetherm" do
  version "0.1.1"
  sha256 "6b25af9256068f7c366b2d6898047f456ef919c2f665736b43567ae79ab95a56"

  url "https://github.com/cluion/tetherm/releases/download/v#{version}/tetherm-#{version}-macos-universal.zip"
  name "Tetherm"
  desc "Desktop terminal for local shells and SSH"
  homepage "https://github.com/cluion/tetherm"

  depends_on macos: :catalina

  app "Tetherm.app"

  zap trash: [
    "~/Library/Application Support/com.cluion.tetherm",
    "~/Library/Caches/com.cluion.tetherm",
    "~/Library/Preferences/com.cluion.tetherm.plist",
    "~/Library/Saved Application State/com.cluion.tetherm.savedState",
  ]

  caveats <<~EOS
    Tetherm is currently ad-hoc signed and not Apple-notarized.
    On first launch, macOS may block it. Open System Settings > Privacy & Security
    and choose Open Anyway to approve this exact build.
  EOS
end
