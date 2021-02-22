# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Konjure < Formula
  desc "Manifest appear!"
  homepage "https://github.com/thestormforge/konjure/"
  version "0.2.3"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/thestormforge/konjure/releases/download/v0.2.3/konjure-darwin-amd64.tar.gz"
    sha256 "1a98f9660e32449137e1f9d5b97d9f12c78b5962d71752a3697e146c89002366"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/thestormforge/konjure/releases/download/v0.2.3/konjure-linux-amd64.tar.gz"
    sha256 "59f844e3609fc1e3389f2245014d3565944b3cfad7ca5c0a385d655d9578cf3d"
  end

  def install
    bin.install "konjure"
  end
end
