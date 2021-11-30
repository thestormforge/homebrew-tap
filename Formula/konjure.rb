# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Konjure < Formula
  desc "Manifest appear!"
  homepage "https://github.com/thestormforge/konjure/"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thestormforge/konjure/releases/download/v0.3.4/konjure-darwin-arm64.tar.gz"
      sha256 "d4f35b3ace3dd4d9f31efb3f63fd0abddd587bebff1b09fd38ceab486bef6fd2"

      def install
        bin.install "konjure"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/thestormforge/konjure/releases/download/v0.3.4/konjure-darwin-amd64.tar.gz"
      sha256 "e49a0a5cea42163bd5cf0d30f89c413ee6ac8acef31109f8b8e94a66a23f14d0"

      def install
        bin.install "konjure"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thestormforge/konjure/releases/download/v0.3.4/konjure-linux-amd64.tar.gz"
      sha256 "cbf1011054b659323e91c7439ef61e63f19f850dadf9b99387bb5112a84fc2d1"

      def install
        bin.install "konjure"
      end
    end
  end
end
