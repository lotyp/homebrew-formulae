class Dockutil < Formula
  desc "Tool for managing dock items"
  homepage "https://github.com/kcrawford/dockutil"
  url "https://github.com/kcrawford/dockutil/archive/refs/tags/3.0.2.tar.gz"
  sha256 "8d0117fccd836a14782107bdd3619df17dd4708470e3522f5b2ab0456769ba79"
  license "Apache-2.0"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with "dockutil", because: "Official version already installed."
  depends_on :macos

  def install
    bin.install "scripts/dockutil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dockutil --version")
  end
end
