# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AfostoCli < Formula
  desc "CLI tool for interaction with Afosto/IO"
  homepage "https://afosto.com/"
  version "0.0.18"
  license "Apache-2.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/afosto/cli/releases/download/v0.0.18/cli_0.0.18_Darwin_x86_64.tar.gz"
    sha256 "f82eac1104b4b2972e677b1f5cf9669ee3f82a6113e324a7ee9558ecbf3b5ca6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/afosto/cli/releases/download/v0.0.18/cli_0.0.18_Linux_x86_64.tar.gz"
    sha256 "b8d0fb8d7592137a1ddca06ecda2ca61ced51447f5fd994ae5a4592ab9f86550"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/afosto/cli/releases/download/v0.0.18/cli_0.0.18_Linux_arm64.tar.gz"
    sha256 "0212db0755c79245c8405d6cc298db2f11168ae4f536ac2b765029947d06c735"
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
