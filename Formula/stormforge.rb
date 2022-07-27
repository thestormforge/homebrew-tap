# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stormforge < Formula
  desc "Release with Confidence"
  homepage "https://www.stormforge.io/"
  version "2.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thestormforge/optimize-controller/releases/download/v2.1.5/stormforge-darwin-arm64.tar.gz"
      sha256 "ecd26c7727f4c5905726c88c8f878242b077f66cad34a381884b7bb9c342cba4"

      def install
        bin.install "stormforge"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/thestormforge/optimize-controller/releases/download/v2.1.5/stormforge-darwin-amd64.tar.gz"
      sha256 "adb5f2adc3f672e87639fce0aee8ce319c94cf5be9bbbd9e6965245e774493b0"

      def install
        bin.install "stormforge"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thestormforge/optimize-controller/releases/download/v2.1.5/stormforge-linux-amd64.tar.gz"
      sha256 "f3f540cc4b9be45c1bfce7da764ce8ed371548046cd35ada21e6ced7f7aacdc7"

      def install
        bin.install "stormforge"
      end
    end
  end
end
