class Killport < Formula
  desc "Kill whatever process is running on a port — macOS"
  homepage "https://github.com/skosari/killport-mac"
  url "https://github.com/skosari/killport-mac/archive/refs/tags/v1.6.7.tar.gz"
  sha256 "479accddd5b43ab6cfc0e66eead14324150979450f5da8212126a144d1ad1ebf"
  license "LicenseRef-killport"
  version "1.6.7"

  def install
    bin.install "killport"
  end

  test do
    assert_match "killport", shell_output("#{bin}/killport 2>&1")
  end
end
