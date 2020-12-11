# This file was generated by GoReleaser. DO NOT EDIT.
class Redskyctl < Formula
  desc "Release with Confidence"
  homepage "https://www.stormforge.io/"
  version "1.9.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/thestormforge/optimize-controller/releases/download/v1.9.1/redskyctl-darwin-amd64.tar.gz"
    sha256 "af254be13748a48f5b955795b1c4aae91d6b59426f15be1d30da2a186f5e734c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/thestormforge/optimize-controller/releases/download/v1.9.1/redskyctl-linux-amd64.tar.gz"
    sha256 "b371f9ad8f6b6970cb25231a27252e14fc04bec3709c0513ecc700184eb3474b"
  end

  def install
    bin.install "redskyctl"
  end
end
