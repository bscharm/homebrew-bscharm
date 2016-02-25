class Bgrok < Formula
  desc "Self hosted fork of ngrok at bscharm.com"
  homepage "https://github.com/bscharm/bgrok"
  url "https://github.com/bscharm/bgrok/archive/1.7.3.tar.gz"
  sha256 "6eca40898b2051c2376e10655821d330ebd725ff9572d33aa41348c03ed8249c"
  revision 1
  depends_on "go" => :build
  depends_on :hg => :build
  def install
    system "make", "release-client"
    bin.install "bin/bgrok"
  end
  test do
    system "#{bin}/ngrok", "version"
  end
end
