# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stormforge < Formula
  desc "Release with Confidence"
  homepage "https://www.stormforge.io/"
  version "2.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thestormforge/optimize-controller/releases/download/v2.1.1/stormforge-darwin-arm64.tar.gz"
      sha256 "028f6f28c2bd10483a796d88258117c4271be4444017633f6ec16867743f8c9a"

      def install
        bin.install "stormforge"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/thestormforge/optimize-controller/releases/download/v2.1.1/stormforge-darwin-amd64.tar.gz"
      sha256 "34f9a8b52422b8b922780ec55da82ac9c3cb52db0c8311d8e879f19ee9f176e7"

      def install
        bin.install "stormforge"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thestormforge/optimize-controller/releases/download/v2.1.1/stormforge-linux-amd64.tar.gz"
      sha256 "1e91da93cd16afc5c27c341c9838d4031e3173d43425b5f069b09993c5ee363a"

      def install
        bin.install "stormforge"
      end
    end
  end
end
