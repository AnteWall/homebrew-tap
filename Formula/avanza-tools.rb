class AvanzaTools < Formula
  desc "Command-line interface for Avanza"
  homepage "https://github.com/AnteWall/kvant-tools"
  url "https://github.com/AnteWall/kvant-tools/releases/download/avanza-tools@1.2.0/kvant-dev-avanza-cli-1.2.0.tgz"
  sha256 "dbffb4a9d7ab29db7c3a5f77924c77adc421bd42265df1f98468ea901fe13d90"

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
