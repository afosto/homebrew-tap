# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AfostoCli < Formula
  desc "CLI tool for interaction with Afosto/IO"
  homepage "https://afosto.com/"
  version "0.0.12"
  license "Apache-2.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/afosto/cli/releases/download/v0.0.12/cli_0.0.12_Darwin_x86_64.tar.gz"
    sha256 "8184fa447a1f5a44200198a1781bff61c5f9f8fa40219a683fd524cc0129cedf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/afosto/cli/releases/download/v0.0.12/cli_0.0.12_Linux_x86_64.tar.gz"
    sha256 "39cd0683ff8ad403aa5249e45c1a4ca8c75094652444a0904229f81c2ed0146e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/afosto/cli/releases/download/v0.0.12/cli_0.0.12_Linux_arm64.tar.gz"
    sha256 "53473cabe0af2f93adae3d0e321d2802faa603e5e35c092f45f769d1443f7c38"
  end

  def install
    bin.install "afosto"
  end

  def caveats; <<~EOS
    Thanks for installing the Afosto CLI! If you have any feedback, please open up an issue at github.com/afosto/cli. Run `afosto login` to authenticate with the API.
  EOS
  end

  test do
    afosto version
  end
end
