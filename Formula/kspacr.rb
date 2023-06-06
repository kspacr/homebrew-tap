# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kspacr < Formula
  desc ""
  homepage "https://kspacr.com"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kspacr/kspacr-cli/releases/download/v0.4.1/kspacr-cli_0.4.1_darwin_arm64.tar.gz"
      sha256 "088447cd33dd40c8bfd509617f9d2d366dee65faca1d9d5f5f59fc491f429329"

      def install
        bin.install "kspacr"

        bash_output = Utils.safe_popen_read("#{bin}/kspacr", "completion", "bash")
        (bash_completion/"kspacr").write bash_output
        zsh_output = Utils.safe_popen_read("#{bin}/kspacr", "completion", "zsh")
        (zsh_completion/"_kspacr").write zsh_output
        fish_output = Utils.safe_popen_read("#{bin}/kspacr", "completion", "fish")
        (fish_completion/"kspacr.fish").write fish_output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kspacr/kspacr-cli/releases/download/v0.4.1/kspacr-cli_0.4.1_darwin_amd64.tar.gz"
      sha256 "c2659fe370d1dcc28b44e8e736abbac9c6d5e68bdac30bc322d7fff0fffc3f6d"

      def install
        bin.install "kspacr"

        bash_output = Utils.safe_popen_read("#{bin}/kspacr", "completion", "bash")
        (bash_completion/"kspacr").write bash_output
        zsh_output = Utils.safe_popen_read("#{bin}/kspacr", "completion", "zsh")
        (zsh_completion/"_kspacr").write zsh_output
        fish_output = Utils.safe_popen_read("#{bin}/kspacr", "completion", "fish")
        (fish_completion/"kspacr.fish").write fish_output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kspacr/kspacr-cli/releases/download/v0.4.1/kspacr-cli_0.4.1_linux_arm64.tar.gz"
      sha256 "bc70972ea8d3a55299bb219aef27e9258526c48ce15230e35436109ddbf77495"

      def install
        bin.install "kspacr"

        bash_output = Utils.safe_popen_read("#{bin}/kspacr", "completion", "bash")
        (bash_completion/"kspacr").write bash_output
        zsh_output = Utils.safe_popen_read("#{bin}/kspacr", "completion", "zsh")
        (zsh_completion/"_kspacr").write zsh_output
        fish_output = Utils.safe_popen_read("#{bin}/kspacr", "completion", "fish")
        (fish_completion/"kspacr.fish").write fish_output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kspacr/kspacr-cli/releases/download/v0.4.1/kspacr-cli_0.4.1_linux_amd64.tar.gz"
      sha256 "b7f50d002cb6c93aa8dec1072156b1138ca8e6f23aca630fb68c03b23a1f51c0"

      def install
        bin.install "kspacr"

        bash_output = Utils.safe_popen_read("#{bin}/kspacr", "completion", "bash")
        (bash_completion/"kspacr").write bash_output
        zsh_output = Utils.safe_popen_read("#{bin}/kspacr", "completion", "zsh")
        (zsh_completion/"_kspacr").write zsh_output
        fish_output = Utils.safe_popen_read("#{bin}/kspacr", "completion", "fish")
        (fish_completion/"kspacr.fish").write fish_output
      end
    end
  end

  test do
    system "#{bin}/kspacr version"
  end
end
