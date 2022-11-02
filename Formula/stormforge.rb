# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stormforge < Formula
  desc "Release with Confidence"
  homepage "https://www.stormforge.io/"
  version "3.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.stormforge.io/stormforge-cli/v3.1.2/stormforge_3.1.2_darwin_arm64.tar.gz"
      sha256 "c7c5a02c7362a99a00b563b3e23af4f75092926bca6a3b3b6a34dc4184f0862c"

      def install
        bin.install "stormforge"
      end
    end
    if Hardware::CPU.intel?
      url "https://downloads.stormforge.io/stormforge-cli/v3.1.2/stormforge_3.1.2_darwin_amd64.tar.gz"
      sha256 "49b9e55518d4239d7573151a340749f35aa7a09c3f4e5de844675d0cc39fd0ed"

      def install
        bin.install "stormforge"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://downloads.stormforge.io/stormforge-cli/v3.1.2/stormforge_3.1.2_linux_arm64.tar.gz"
      sha256 "f507f0510a413fc965642f2894837de40f3ad52c57ef958a6e24405d6b125f8a"

      def install
        bin.install "stormforge"
      end
    end
    if Hardware::CPU.intel?
      url "https://downloads.stormforge.io/stormforge-cli/v3.1.2/stormforge_3.1.2_linux_amd64.tar.gz"
      sha256 "300a6b151ee06f4154a150effe2c6348f731bf56d6b2296a03287dc6fcfdb65f"

      def install
        bin.install "stormforge"
      end
    end
  end
end
