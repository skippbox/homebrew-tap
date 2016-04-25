class Kmachine < Formula
  desc "Single Node Kubernetes cluster"
  homepage "http://www.skippbox.com"
  version "1.2.1"

  if MacOS.prefer_64_bit?
    url "https://github.com/skippbox/kmachine/releases/download/v1.2.1/kmachine_darwin-amd64.tar.gz"
    sha256 "5e33dd226125e95307dc39c066679086e3cfec3147953e1a1a1e0d8753b90958"
  else
    url "https://github.com/skippbox/kmachine/releases/download/v1.2.1/kmachine_darwin-386.tar.gz"
    sha256 "8f2d3bb33a7e7aea4023f6d916bb37674440a3edb624752720b00e57e4c39be5"
  end

  bottle :unneeded

  def install
    bin.install "kmachine"
    bin.install Dir["kmachine-driver*"]
  end

  def caveats; <<-EOS.undent
    To use kmachine on your local computer, you will need to have
    Virtualbox installed. Please install it from:
      https://www.virtualbox.org/wiki/Downloads
    EOS
  end

  test do
    system "kmachine", "-v"
  end
end
