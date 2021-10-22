# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stormforge < Formula
  desc "Release with Confidence"
  homepage "https://www.stormforge.io/"
  version "2.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thestormforge/optimize-controller/releases/download/v2.0.2/stormforge-darwin-arm64.tar.gz"
      sha256 "71578bd868284eabd58ea426665bb313a0d7a76cc5112eda762d63ab57f28c69"

      def install
        bin.install "stormforge"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/thestormforge/optimize-controller/releases/download/v2.0.2/stormforge-darwin-amd64.tar.gz"
      sha256 "bbcbbc7089f7d450b2d53ffaa4be6f97f9917332830f032e80a69d1c18945c5c"

      def install
        bin.install "stormforge"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thestormforge/optimize-controller/releases/download/v2.0.2/stormforge-linux-amd64.tar.gz"
      sha256 "a931277d33edc15a1777b94ecc1328558d6577a35391d97a342237a244979a71"

      def install
        bin.install "stormforge"
      end
    end
  end
end
