class DockutilAlt < Formula
  desc "Tool for managing dock items."
  homepage "https://github.com/kcrawford/dockutil"
  url "https://github.com/kcrawford/dockutil/releases/download/#{version}/dockutil-#{version}.pkg"
  version "3.0.2"
  sha256 "0245e7df6bf3d35820f0fe4b6fa5bdd1d109fa304df4a740e11acdf78dde20d8"
  license "Apache-2.0"

  def install
    system "pkgutil", "--expand-full", "dockutil-#{version}.pkg", "usr/local/bin/dockutil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dockutil --version")
  end
end
