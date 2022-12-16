# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stormforge < Formula
  desc "Release with Confidence"
  homepage "https://www.stormforge.io/"
  version "3.2.0-alpha.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.stormforge.io/stormforge-cli/v3.2.0-alpha.4/stormforge_3.2.0-alpha.4_darwin_arm64.tar.gz"
      sha256 "ecd92b38d4bc0d76a805d9b889a73901b515c00eef8ef115d0ff8ef48459e917"

      def install
        bin.install "stormforge"
      end
    end
    if Hardware::CPU.intel?
      url "https://downloads.stormforge.io/stormforge-cli/v3.2.0-alpha.4/stormforge_3.2.0-alpha.4_darwin_amd64.tar.gz"
      sha256 "29747a30b9eb8d922f2beadea2ae0c34b64621bada3fc8d1b63cb72c8adfa2db"

      def install
        bin.install "stormforge"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://downloads.stormforge.io/stormforge-cli/v3.2.0-alpha.4/stormforge_3.2.0-alpha.4_linux_amd64.tar.gz"
      sha256 "9f87af491f368e8681d332ab1c6a261d7f2042e6581dc5b956c1cbdf07852e92"

      def install
        bin.install "stormforge"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://downloads.stormforge.io/stormforge-cli/v3.2.0-alpha.4/stormforge_3.2.0-alpha.4_linux_arm64.tar.gz"
      sha256 "7ac2dfa42d74923b1962ae20ff997b2541eaaf58a679e19445303bf48d5ace90"

      def install
        bin.install "stormforge"
      end
    end
  end
end
