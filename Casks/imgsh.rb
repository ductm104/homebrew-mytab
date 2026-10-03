cask "imgsh" do
  version "0.1.0"
  sha256 "db4765169c6c675846d286e0c271434f4bcf30febefcd14cd7f4e49e54d9bf64"

  url "https://github.com/ductm104/imgsh/releases/download/v#{version}/imgsh_#{version}_aarch64.dmg",
      verified: "github.com/ductm104/imgsh/"
  name "imgsh"
  desc "Browse SSH remotes and upload images and files over SCP"
  homepage "https://github.com/ductm104/imgsh"

  depends_on macos: ">= :catalina"
  depends_on arch: :arm64

  app "imgsh.app"
end
