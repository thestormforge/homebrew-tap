# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stormforge < Formula
  desc "Release with Confidence"
  homepage "https://www.stormforge.io/"
  version "5.1.10"

  on_macos do
    on_intel do
      url "https://downloads.stormforge.io/stormforge-cli/v5.1.10/stormforge_5.1.10_darwin_amd64.tar.gz"
      sha256 "057064bbca76a91c7c9b12073d07b750f87ec9bf5a3f7ad24345f2cf6e3b2ed9"

      def install
        bin.install "stormforge"

        # generate and install bash completion
        output = Utils.safe_popen_read("#{bin}/stormforge", "completion", "bash")
        (bash_completion/"stormforge").write output

        # generate and install zsh completion
        output = Utils.safe_popen_read("#{bin}/stormforge", "completion", "zsh")
        (zsh_completion/"_stormforge").write output
      end
    end
    on_arm do
      url "https://downloads.stormforge.io/stormforge-cli/v5.1.10/stormforge_5.1.10_darwin_arm64.tar.gz"
      sha256 "a20e0307c2240a6a62175ae5877123ffa495ccf9e9f44607264e9cabad962a7c"

      def install
        bin.install "stormforge"

        # generate and install bash completion
        output = Utils.safe_popen_read("#{bin}/stormforge", "completion", "bash")
        (bash_completion/"stormforge").write output

        # generate and install zsh completion
        output = Utils.safe_popen_read("#{bin}/stormforge", "completion", "zsh")
        (zsh_completion/"_stormforge").write output
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://downloads.stormforge.io/stormforge-cli/v5.1.10/stormforge_5.1.10_linux_amd64.tar.gz"
        sha256 "0480c42e17e42c6ffbb5dfcec30ee03facc4c971e8bffc4d522492c47ad0a117"

        def install
          bin.install "stormforge"

          # generate and install bash completion
          output = Utils.safe_popen_read("#{bin}/stormforge", "completion", "bash")
          (bash_completion/"stormforge").write output

          # generate and install zsh completion
          output = Utils.safe_popen_read("#{bin}/stormforge", "completion", "zsh")
          (zsh_completion/"_stormforge").write output
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://downloads.stormforge.io/stormforge-cli/v5.1.10/stormforge_5.1.10_linux_arm64.tar.gz"
        sha256 "e77ee9059a14aa7ecbdff8766067d1d39a0a7b67120ccdb6c21d0b5ddf3cfc21"

        def install
          bin.install "stormforge"

          # generate and install bash completion
          output = Utils.safe_popen_read("#{bin}/stormforge", "completion", "bash")
          (bash_completion/"stormforge").write output

          # generate and install zsh completion
          output = Utils.safe_popen_read("#{bin}/stormforge", "completion", "zsh")
          (zsh_completion/"_stormforge").write output
        end
      end
    end
  end
end
