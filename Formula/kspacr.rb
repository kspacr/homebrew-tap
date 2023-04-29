# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class kspacr < Formula
  desc ""
  homepage "https://kspacr.com"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kspacr/kspacr-cli/releases/download/v0.1.0/kspacr-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "3396ab7a8f60b26319e0515c9723bb0c2e22834d12e8c0dd46626c74ebd94d23"

      def install
        bin.install "kspacr"
      end
    end
  end

  test do
    system "#{bin}/kspacr version"
  end
end
