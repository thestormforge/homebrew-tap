# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stormforge < Formula
  desc "Release with Confidence"
  homepage "https://www.stormforge.io/"
  version "5.1.11"

  on_macos do
    on_intel do
      url "https://downloads.stormforge.io/stormforge-cli/v5.1.11/stormforge_5.1.11_darwin_amd64.tar.gz"
      sha256 "81514ea3fae713a99ad0f532df9ee1b4780e395ff6da3fca1a3eb203ba42de86"

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
      url "https://downloads.stormforge.io/stormforge-cli/v5.1.11/stormforge_5.1.11_darwin_arm64.tar.gz"
      sha256 "a0c033077d43611652aab0131240552fc3a8024fd8fec4e0a491df9cbaff335f"

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
        url "https://downloads.stormforge.io/stormforge-cli/v5.1.11/stormforge_5.1.11_linux_amd64.tar.gz"
        sha256 "e7647af95553ba31639e51702155a718a6c5b011df2e910f883cd37cedb072af"

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
        url "https://downloads.stormforge.io/stormforge-cli/v5.1.11/stormforge_5.1.11_linux_arm64.tar.gz"
        sha256 "92234cec01fc6d975565fedf26048f0f7136c0d318b57aeda1929cc0cecae09b"

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
