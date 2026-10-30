class AvanzaTools < Formula
  desc "Command-line interface for Avanza"
  homepage "https://github.com/AnteWall/avanza-ts"
  url "https://github.com/AnteWall/avanza-ts/releases/download/avanza-tools@1.2.0/avanza-tools-1.2.0.tgz"
  sha256 "61d13eb89868c4c4ade959aeef3484413ef15452520c09c53570d418f1439e7c"

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
