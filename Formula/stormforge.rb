# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stormforge < Formula
  desc "Release with Confidence"
  homepage "https://www.stormforge.io/"
  version "3.2.0-alpha.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.stormforge.io/stormforge-cli/v3.2.0-alpha.3/stormforge_3.2.0-alpha.3_darwin_arm64.tar.gz"
      sha256 "5e1d42af6e843619ed68a087bb03a070ca76a1af965f65012c081c04a6d6c1e3"

      def install
        bin.install "stormforge"
      end
    end
    if Hardware::CPU.intel?
      url "https://downloads.stormforge.io/stormforge-cli/v3.2.0-alpha.3/stormforge_3.2.0-alpha.3_darwin_amd64.tar.gz"
      sha256 "06222d93da1ea908d0b1b72c2d71d807815c4fe7fb13678ca7df67be9c5f68cb"

      def install
        bin.install "stormforge"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://downloads.stormforge.io/stormforge-cli/v3.2.0-alpha.3/stormforge_3.2.0-alpha.3_linux_arm64.tar.gz"
      sha256 "08b41a2af3672c5d3e1b44beaaec939534a973a779caefc4fa8e7e98b56c5240"

      def install
        bin.install "stormforge"
      end
    end
    if Hardware::CPU.intel?
      url "https://downloads.stormforge.io/stormforge-cli/v3.2.0-alpha.3/stormforge_3.2.0-alpha.3_linux_amd64.tar.gz"
      sha256 "017223e56fe888eb12e4bdc6004c44ba5d054ea30962648c28a786318ef2daa6"

      def install
        bin.install "stormforge"
      end
    end
  end
end
