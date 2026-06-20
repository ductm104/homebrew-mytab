cask "hanhcute" do
  version "0.8.3"
  sha256 "5b3011ab1c31fb5c06b68763719a13473acc08c9a9596e042095ee0ee7545723"

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
