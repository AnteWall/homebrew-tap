class AvanzaTools < Formula
  desc "Command-line interface for Avanza"
  homepage "https://github.com/AnteWall/avanza-ts"
  url "https://github.com/AnteWall/avanza-ts/releases/download/avanza-tools@1.0.2/avanza-tools-1.0.2.tgz"
  sha256 "571c92d4866cb50c58b273659a5f8d8c4df8cffa04c49b0bdbe046459f8a0b66"

  depends_on "node"

  def install
    # ponytail: allow same-day SDK releases; pin dependencies if cooldown becomes necessary.
    system "npm", "install", *std_npm_args, "--min-release-age=0"
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "avanza", shell_output("#{bin}/avanza --help")
  end
end
