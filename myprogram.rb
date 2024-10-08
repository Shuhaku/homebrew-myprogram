class Myprogram < Formula
  desc "Description of your program"
  homepage "https://github.com/shuhaku/my-homebrew-program"
  url "https://github.com/shuhaku/my-homebrew-program/releases/download/v1.0.0/my-homebrew-program.tar.gz"
  sha256 "a9e170318e438d42c2b2e9e738e3c7d00537fc02215ac9b06bcc9eb3c9284141"
  license "MIT"

  def install
    bin.install "index.js" => "myprogram"
  end

  test do
    system "#{bin}/myprogram", "--version"
  end
end