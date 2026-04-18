class Killport < Formula
  desc "Kill whatever process is running on a port — macOS"
  homepage "https://github.com/skosari/killport-mac"
  url "https://github.com/skosari/killport-mac/archive/refs/tags/v1.10.6.tar.gz"
  sha256 "2cdb063a5a83990cfb8ef0dd913ded8d9edb0cb0ddb1ed6c2617778a361ba9c0"
  license "LicenseRef-killport"
  version "1.10.6"

  def install
    bin.install "killport"
  end

  test do
    assert_match "killport", shell_output("#{bin}/killport 2>&1")
  end
end
