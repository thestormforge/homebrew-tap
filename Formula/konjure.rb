# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Konjure < Formula
  desc "Manifest appear!"
  homepage "https://github.com/thestormforge/konjure/"
  version "0.4.14"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thestormforge/konjure/releases/download/v0.4.14/konjure-darwin-amd64.tar.gz"
      sha256 "a7c1736987d2351b98f7d6331aeb1fccb80601b3250b3bba9d8f8e4467c66347"

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
      url "https://github.com/thestormforge/konjure/releases/download/v0.4.14/konjure-darwin-arm64.tar.gz"
      sha256 "18fe2841f392064e08be5e419ff1233235588b7f78039eebcc98660bf50f4daa"

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
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/thestormforge/konjure/releases/download/v0.4.14/konjure-linux-amd64.tar.gz"
      sha256 "adb21e85e192b8c8d315156a76449952178f1525d4f8daeb228bf442639c6bac"
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
