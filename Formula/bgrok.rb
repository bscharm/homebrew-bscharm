class Bgrok < Formula
  desc "Self hosted fork of ngrok at bscharm.com"
  homepage "https://github.com/bscharm/bgrok"
  url "https://github.com/bscharm/bgrok/archive/1.7.2.tar.gz"
  sha256 "43a3c57343b9130264e01183948490ebcbdb83f827fa9fccca53b8491689f8dc"
  def install
    system "make", "release-client"
    bin.install "bin/bgrok"
  end
  test do
    system "false"
  end
end
