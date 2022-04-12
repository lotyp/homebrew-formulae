class DockutilAlt < Formula
  version "3.0.2"
  desc "Tool for managing dock items."
  homepage "https://github.com/kcrawford/dockutil"
  url "https://github.com/kcrawford/dockutil/releases/download/#{version}/dockutil-#{version}.pkg"
  sha256 "175137ea747e83ed221d60b18b712b256ed31531534cde84f679487d337668fd"
  license "Apache-2.0"

  def install
    bootstrap = buildpath/"bootstrap"
    system "pkgutil", "--expand-full", "dockutil-3.0.2.pkg", "usr/local/bin"
    bootstrap.install Dir["bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dockutil --version")
  end
end
