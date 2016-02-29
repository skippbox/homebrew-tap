class Kompose < Formula
  desc "Fork of lib compose with Kubernetes integration"
  homepage "http://www.skippbox.com"
  version "0.0.3"

  if MacOS.prefer_64_bit?
    url "https://github.com/skippbox/kompose/releases/download/v0.0.3.alpha.2/kompose_darwin-amd64.tar.gz"
    sha256 "6567fe2d8addd90f4e74ceafaa27918378ee94ac495664b404600d6a8750764a"
  else
    url "https://github.com/skippbox/kompose/releases/download/v0.0.3.alpha.2/kompose_darwin-386.tar.gz"
    sha256 "47c732dbd12584cf7b4509de3cb64b6e46eb888e09596b854139792dff9e812b"
  end

  bottle :unneeded

  def install
    bin.install "kompose"
  end

  test do
    system "kompose", "-v"
  end
end
