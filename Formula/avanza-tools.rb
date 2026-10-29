class AvanzaTools < Formula
  desc "Command-line interface for Avanza"
  homepage "https://github.com/AnteWall/avanza-ts"
  url "https://github.com/AnteWall/avanza-ts/releases/download/avanza-tools@1.1.0/avanza-tools-1.1.0.tgz"
  sha256 "add9f7f953afcbb91ea47e3baecf6050d49a1581b9c17a8d47a2b1504ef3e955"

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
