# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stormforge < Formula
  desc "Release with Confidence"
  homepage "https://www.stormforge.io/"
  version "4.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://downloads.stormforge.io/stormforge-cli/v4.0.1/stormforge_4.0.1_darwin_amd64.tar.gz"
      sha256 "267785914b6009cdeb77f4126d9fa9e9d2264a0adcece9be40b0c6220a160b80"

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
    if Hardware::CPU.arm?
      url "https://downloads.stormforge.io/stormforge-cli/v4.0.1/stormforge_4.0.1_darwin_arm64.tar.gz"
      sha256 "2eec8cb61b69ef181f9c9a62c97c94f1f802e65aecc3b6c457bd7c2ae7ab93e7"

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
      url "https://downloads.stormforge.io/stormforge-cli/v4.0.1/stormforge_4.0.1_linux_arm64.tar.gz"
      sha256 "df97c465543d0c74d24c9789f28163cf9b9155481ff4b6e696e7922d9bbc3d39"

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
      url "https://downloads.stormforge.io/stormforge-cli/v4.0.1/stormforge_4.0.1_linux_amd64.tar.gz"
      sha256 "89d18a87b96717762b8d18b3c7df7939706587ee12f83eb79e97f55e538866a0"

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
