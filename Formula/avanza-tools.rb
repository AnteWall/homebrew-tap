class AvanzaTools < Formula
  desc "Command-line interface for Avanza"
  homepage "https://github.com/AnteWall/avanza-ts"
  url "https://registry.npmjs.org/avanza-tools/-/avanza-tools-1.0.0.tgz"
  sha256 "66e1f9438e8487f10024c7a1fb4a377d6a2f22a666a0b37d7920534fd599ee32"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "avanza", shell_output("#{bin}/avanza --help")
  end
end
