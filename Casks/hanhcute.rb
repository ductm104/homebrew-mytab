cask "hanhcute" do
  version "0.0.85"
  sha256 "5c330f75a13006f73d1c420bf196094fdf885009c6277ca1034806c8e43c1d3b"

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
