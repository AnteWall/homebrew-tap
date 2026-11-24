class KvantTools < Formula
  desc "Command-line interface for Avanza"
  homepage "https://github.com/AnteWall/kvant-tools"
  url "https://github.com/AnteWall/kvant-tools/releases/download/avanza-tools@1.2.1/kvant-dev-avanza-cli-1.2.1.tgz"
  sha256 "b8b2d94021378861709110c9c4705c92937af669f48b2f74fee6a0e467125df5"

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
