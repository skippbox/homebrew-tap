class Kompose < Formula
  desc "Fork of lib compose with Kubernetes integration"
  homepage "http://www.skippbox.com"
  version "0.0.3"

  if MacOS.prefer_64_bit?
    url "https://github.com/skippbox/kompose/releases/download/v0.0.3/kompose_darwin-amd64.tar.gz"
    sha256 "23234a3239286532150b81f27d660febf7250251376b3348af273062d93a2d45"
  else
    url "https://github.com/skippbox/kompose/releases/download/v0.0.3/kompose_darwin-386.tar.gz"
    sha256 "1a00818db3a77dc2d696e45f275e190003e86f39897c1e88ff70d7c66c247b93"
  end

  bottle :unneeded

  def install
    bin.install "kompose"
  end

  test do
    system "kompose", "-v"
  end
end
