cask "rectangle-ductm" do
  version "2.0.4-ductm.1"
  sha256 "793ce3c89b49c2d8bfa22bcfe487de7653c34afb1727c8d05597957d2ebe5dbb"

  url "https://github.com/ductm104/Rectangle/releases/download/v#{version}/Rectangle_#{version}_universal.zip"
  name "Rectangle"
  desc "Window manager with instant Space switching"
  homepage "https://github.com/ductm104/Rectangle"

  conflicts_with cask: "rectangle"
  depends_on :macos

  app "Rectangle.app"

  # App is not notarized; drop the quarantine flag so Gatekeeper lets it open.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Rectangle.app"]
  end

  zap trash: [
    "~/Library/Application Support/Rectangle",
    "~/Library/Preferences/com.knollsoft.Rectangle.plist",
  ]
end
