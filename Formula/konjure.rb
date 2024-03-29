# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Konjure < Formula
  desc "Manifest appear!"
  homepage "https://github.com/thestormforge/konjure/"
  version "0.4.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thestormforge/konjure/releases/download/v0.4.9/konjure-darwin-arm64.tar.gz"
      sha256 "499fc27a9ce6c6f0748ff3f57c591dcc878d9e1b066bd559dc7496dada3b125a"

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
    if Hardware::CPU.intel?
      url "https://github.com/thestormforge/konjure/releases/download/v0.4.9/konjure-darwin-amd64.tar.gz"
      sha256 "91affb7e5297547fc247f9134359519e4c924cde22e716b1d8f1be75ea0e0b30"

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
      url "https://github.com/thestormforge/konjure/releases/download/v0.4.9/konjure-linux-amd64.tar.gz"
      sha256 "e9e5872118d57cf967c341a8f742e05922dcf831d26ebc2f8d3427214fc979d5"

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
