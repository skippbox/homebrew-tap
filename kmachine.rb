class Kmachine < Formula
  desc "Single Node Kubernetes cluster"
  homepage "http://www.skippbox.com"
  version "1.2.0"

  if MacOS.prefer_64_bit?
    url "https://github.com/skippbox/kmachine/releases/download/v1.2.0/kmachine_darwin-amd64.tar.gz"
    sha256 "398aa738d93c41c9609e464e05c9f81bce3bc64ffffe73bc4232791e98f37175"
  else
    url "https://github.com/skippbox/kmachine/releases/download/v1.2.0/kmachine_darwin-386.tar.gz"
    sha256 "cfa2d4745ed672561f1ef6184d4043ec49cf3b979dd0930ae7eb5a36052652cc"
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
