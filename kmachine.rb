class Kmachine < Formula
  desc "Single Node Kubernetes cluster"
  homepage "http://www.skippbox.com"
  url "https://github.com/skippbox/kmachine/releases/download/v1.2.0-alpha.8/kmachine_darwin-amd64.tar.gz"
  sha256 "6678be23c2954ce0eeb589b446f0aec55bcbaa59e937d4aee5bb5d58995caf00"

  def install
    bin.install "kmachine"
  end

  test do
  end
end
