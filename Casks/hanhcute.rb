cask "hanhcute" do
  version "0.0.87"
  sha256 "7f1d2ee565e8b9c634282ad37a0cb145cb6453477c7943dbf1d74f2e0311e171"

  url "https://github.com/ductm104/Handy/releases/download/v#{version}/HanhCute_#{version}_aarch64.dmg",
      verified: "github.com/ductm104/Handy/"
  name "HanhCute"
  desc "Cross-platform desktop speech-to-text application"
  homepage "https://github.com/ductm104/Handy"

  depends_on :macos
  depends_on arch: :arm64

  app "HanhCute.app"

  zap trash: [
    "~/Library/Application Support/com.hanhcute.app",
    "~/Library/Caches/com.hanhcute.app",
    "~/Library/Logs/com.hanhcute.app",
    "~/Library/Preferences/com.hanhcute.app.plist",
    "~/Library/Saved Application State/com.hanhcute.app.savedState",
    "~/Library/WebKit/com.hanhcute.app",
  ]
end
