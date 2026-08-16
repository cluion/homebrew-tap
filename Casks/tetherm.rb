cask "tetherm" do
  version "0.1.0"
  sha256 "14dd756c734ce875c02cdc8a052cefaf4d111866c9566fa90bfb53268f0076e4"

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
