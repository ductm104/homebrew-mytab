cask "imgsh" do
  version "0.1.1"
  sha256 "dd22f4a630a7f7b4a0b814ba27296c219cbad8fb2ff156cbe27305a7287e06e7"

  url "https://github.com/ductm104/imgsh/releases/download/v#{version}/imgsh_#{version}_aarch64.dmg"
  name "imgsh"
  desc "Browse SSH remotes and upload images and files over SCP"
  homepage "https://github.com/ductm104/imgsh"

  depends_on arch: :arm64
  depends_on :macos

  app "imgsh.app"

  # App is not notarized; drop the quarantine flag so Gatekeeper lets it open.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/imgsh.app"]
  end
end
