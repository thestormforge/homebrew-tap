# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Konjure < Formula
  desc "Manifest appear!"
  homepage "https://github.com/thestormforge/konjure/"
  version "0.4.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thestormforge/konjure/releases/download/v0.4.13/konjure-darwin-amd64.tar.gz"
      sha256 "d01515e7078ffb4bb3ef7fe96468a1540630f9574454aa96b3dd809fac201a8d"

      def install
        bin.install "konjure"

        # generate and install bash completion
        output = Utils.safe_popen_read("#{bin}/konjure", "completion", "bash")
        (bash_completion/"konjure").write output

        # generate and install zsh completion
        output = Utils.safe_popen_read("#{bin}/konjure", "completion", "zsh")
        (zsh_completion/"_konjure").write output
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/thestormforge/konjure/releases/download/v0.4.13/konjure-darwin-arm64.tar.gz"
      sha256 "548fe7372629789f3f3c7d4e1ff0f679f92e494186a3c8861e39564acf8c87e7"

      def install
        bin.install "konjure"

        # generate and install bash completion
        output = Utils.safe_popen_read("#{bin}/konjure", "completion", "bash")
        (bash_completion/"konjure").write output

        # generate and install zsh completion
        output = Utils.safe_popen_read("#{bin}/konjure", "completion", "zsh")
        (zsh_completion/"_konjure").write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/thestormforge/konjure/releases/download/v0.4.13/konjure-linux-amd64.tar.gz"
        sha256 "1cdc4660488d5d6addda8978b3be09a6733abc1b4b1e60f5869060c1366c5b72"

        def install
          bin.install "konjure"

          # generate and install bash completion
          output = Utils.safe_popen_read("#{bin}/konjure", "completion", "bash")
          (bash_completion/"konjure").write output

          # generate and install zsh completion
          output = Utils.safe_popen_read("#{bin}/konjure", "completion", "zsh")
          (zsh_completion/"_konjure").write output
        end
      end
    end
  end
end
