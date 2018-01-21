class Bgrok < Formula
  desc "Self hosted fork of ngrok at bscharm.com"
  homepage "https://github.com/bscharm/bgrok"
  url "https://github.com/bscharm/bgrok/archive/1.7.4.tar.gz"
  sha256 "3555b3b75eb811a9fd6e132bf61f3ef29871ac7a4322375def5030e5e629b8f8"
  revision 1
  depends_on "go" => :build
  depends_on "mercurial" => :build
  def install
    system "make", "release-client"
    bin.install "bin/bgrok"
  end
  test do
    system "#{bin}/bgrok", "version"
  end
end
