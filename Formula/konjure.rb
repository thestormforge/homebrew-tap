# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Konjure < Formula
  desc "Manifest appear!"
  homepage "https://github.com/thestormforge/konjure/"
  version "0.3.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thestormforge/konjure/releases/download/v0.3.18/konjure-darwin-arm64.tar.gz"
      sha256 "c17bb08fe34da71bb66409ae332919b67306bfabd29544ee939bd188d5074f74"

      def install
        bin.install "konjure"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/thestormforge/konjure/releases/download/v0.3.18/konjure-darwin-amd64.tar.gz"
      sha256 "c40b0346e2a6c784b32b289da98c51c940519628a8276ad0f0d53f9cabf24e77"

      def install
        bin.install "konjure"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thestormforge/konjure/releases/download/v0.3.18/konjure-linux-amd64.tar.gz"
      sha256 "806c490fe3606f86d56c6d27f214df4dcbbf296c6fe819512dc651dc1c8074b0"

      def install
        bin.install "konjure"
      end
    end
  end
end
