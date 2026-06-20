class Mytab < Formula
  desc "Your app description here"
  homepage "https://github.com/<your-username>/<your-repo>"
  url "https://github.com/<your-username>/<your-repo>/releases/download/v<version>/mytab-<version>-<system>.tar.gz"
  version "<version>"
  sha256 "<sha256-checksum>"

  depends_on :arch => :x86_64   # or :arm if Apple Silicon only

  def install
    bin.install "mytab"
  end

  test do
    system "#{bin}/mytab", "--version"
  end
end
