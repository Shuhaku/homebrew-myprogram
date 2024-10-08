class MyHomebrewProgram < Formula
  desc "HomebrewShuhaku"           # A short description of what your program does
  homepage "https://github.com/shuhaku/my-homebrew-program"   # Link to your program's GitHub repo
  url "https://github.com/shuhaku/my-homebrew-program/archive/refs/tags/v1.0.0.tar.gz"   # The URL to download your program's tarball (a compressed archive of the code)
  sha256 "a9e170318e438d42c2b2e9e738e3c7d00537fc02215ac9b06bcc9eb3c9284141"      # The SHA256 hash of the tarball file (you'll generate this)
  license "MIT"                                # The license type for your program

  def install
    bin.install "index.js" => "myprogram"      # Tells Homebrew to install the `index.js` file as `myprogram`
  end

  test do
    system "#{bin}/myprogram", "--version"     # A simple test to check if the program was installed successfully
  end
end