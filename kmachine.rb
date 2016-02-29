class Kmachine < Formula
  desc "Single Node Kubernetes cluster"
  homepage "http://www.skippbox.com"
  version "0.5.0"

  if MacOS.prefer_64_bit?
    url "https://github.com/skippbox/kmachine/releases/download/v1.2.0-alpha.8/kmachine_darwin-amd64.tar.gz"
    sha256 "6678be23c2954ce0eeb589b446f0aec55bcbaa59e937d4aee5bb5d58995caf00"
  else
    url "https://github.com/skippbox/kmachine/releases/download/v1.2.0-alpha.8/kmachine_darwin-386.tar.gz"
    sha256 "4f57e7170d1f9609d03902a8776c601d75640542bab201019cb12e1798d4b9e9"
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
