# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Konjure < Formula
  desc "Manifest appear!"
  homepage "https://github.com/thestormforge/konjure/"
  version "0.3.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thestormforge/konjure/releases/download/v0.3.13/konjure-darwin-amd64.tar.gz"
      sha256 "2b91ed6bfa90de30332a255cb1e620077520103588c9b2187716c178284b2bf3"

      def install
        bin.install "konjure"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/thestormforge/konjure/releases/download/v0.3.13/konjure-darwin-arm64.tar.gz"
      sha256 "57b94ef02ed0ba2b7a7afccf5a5f1596ae74c1f36e7d3daad7b26ca564848398"

      def install
        bin.install "konjure"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thestormforge/konjure/releases/download/v0.3.13/konjure-linux-amd64.tar.gz"
      sha256 "819e9dc21629844be7377c892d2d7957e3d2f090d919abbce655dcffba859aa8"

      def install
        bin.install "konjure"
      end
    end
  end
end
