# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stormforge < Formula
  desc "Release with Confidence"
  homepage "https://www.stormforge.io/"
  version "5.1.12"

  on_macos do
    on_intel do
      url "https://downloads.stormforge.io/stormforge-cli/v5.1.12/stormforge_5.1.12_darwin_amd64.tar.gz"
      sha256 "32d8e5f31bb059708dcb902cb77ef90baa8326e768d10d89326ac96f1596d24e"

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
      url "https://downloads.stormforge.io/stormforge-cli/v5.1.12/stormforge_5.1.12_darwin_arm64.tar.gz"
      sha256 "d5cb7f9f6081a033f55049d5eeca774434dfc228df6e610aba4f12d98dde5c51"

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
        url "https://downloads.stormforge.io/stormforge-cli/v5.1.12/stormforge_5.1.12_linux_amd64.tar.gz"
        sha256 "530d287c95fa4af833d013e5e336745417c9ec80fc03d93933d58425d6935daa"

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
        url "https://downloads.stormforge.io/stormforge-cli/v5.1.12/stormforge_5.1.12_linux_arm64.tar.gz"
        sha256 "fd53d8c1fc62da11f50b84c12f9e83b796a184798489c892f3531eda00d43b1e"

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
