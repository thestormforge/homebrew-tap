# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stormforge < Formula
  desc "Release with Confidence"
  homepage "https://www.stormforge.io/"
  version "2.0.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thestormforge/optimize-controller/releases/download/v2.0.8/stormforge-darwin-arm64.tar.gz"
      sha256 "b52d5d696182741f959b4b673cf8ca9e378a7ee7043266a38dcb0e42f06b3b32"

      def install
        bin.install "stormforge"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/thestormforge/optimize-controller/releases/download/v2.0.8/stormforge-darwin-amd64.tar.gz"
      sha256 "4d974ce377df24c6348935616daa5647ffb7bc92e6711233e2e554368c1573bf"

      def install
        bin.install "stormforge"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thestormforge/optimize-controller/releases/download/v2.0.8/stormforge-linux-amd64.tar.gz"
      sha256 "e2c30a2d581d014b41371931a8202412d6cc55242082edfd469378d93ad8a294"

      def install
        bin.install "stormforge"
      end
    end
  end
end
