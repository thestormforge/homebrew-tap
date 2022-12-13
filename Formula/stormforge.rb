# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stormforge < Formula
  desc "Release with Confidence"
  homepage "https://www.stormforge.io/"
  version "3.2.0-alpha.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.stormforge.io/stormforge-cli/v3.2.0-alpha.2/stormforge_3.2.0-alpha.2_darwin_arm64.tar.gz"
      sha256 "3336a9616c08df61a2e13870e4471aba972a98d64643bbbe736efd38ebc6e8d4"

      def install
        bin.install "stormforge"
      end
    end
    if Hardware::CPU.intel?
      url "https://downloads.stormforge.io/stormforge-cli/v3.2.0-alpha.2/stormforge_3.2.0-alpha.2_darwin_amd64.tar.gz"
      sha256 "d095165299f9b5b03393c0839613669aa96e3ffe69744221ff5c30ab67f185aa"

      def install
        bin.install "stormforge"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://downloads.stormforge.io/stormforge-cli/v3.2.0-alpha.2/stormforge_3.2.0-alpha.2_linux_amd64.tar.gz"
      sha256 "3f73f9f46aacbb9c3768463542fb66b81d255566355ce9162dd51cb3d9f62718"

      def install
        bin.install "stormforge"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://downloads.stormforge.io/stormforge-cli/v3.2.0-alpha.2/stormforge_3.2.0-alpha.2_linux_arm64.tar.gz"
      sha256 "392999f2a5196bd83474299811079a8abb4a8ab14a4334ff5dde4d9330f8d773"

      def install
        bin.install "stormforge"
      end
    end
  end
end
