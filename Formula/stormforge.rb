# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stormforge < Formula
  desc "Release with Confidence"
  homepage "https://www.stormforge.io/"
  version "3.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.stormforge.io/stormforge-cli/v3.3.2/stormforge_3.3.2_darwin_arm64.tar.gz"
      sha256 "e53d11e77e6b4ead6f90e90ae3ea69d9d2849a41c8f7dc19a30173ac0f4b1b8e"

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
    if Hardware::CPU.intel?
      url "https://downloads.stormforge.io/stormforge-cli/v3.3.2/stormforge_3.3.2_darwin_amd64.tar.gz"
      sha256 "58f8b4d774bde72f0886d813ddef920abb4ba14814d3b2fb23a1d870aa2a0a37"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://downloads.stormforge.io/stormforge-cli/v3.3.2/stormforge_3.3.2_linux_arm64.tar.gz"
      sha256 "f03c5dc9dfabebde0162ffc80c0f2f7d0c945c7bfd71fd3d25413b74f46d5703"

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
    if Hardware::CPU.intel?
      url "https://downloads.stormforge.io/stormforge-cli/v3.3.2/stormforge_3.3.2_linux_amd64.tar.gz"
      sha256 "cc52aaa12e27ec86417a47cc6fedfe1573af5c1b4335c59c2f45811c82625656"

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
