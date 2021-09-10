# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AfostoCli < Formula
  desc "CLI tool for interaction with Afosto/IO"
  homepage "https://afosto.com/"
  version "0.0.19"
  license "Apache-2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/afosto/cli/releases/download/v0.0.19/cli_0.0.19_Darwin_x86_64.tar.gz"
      sha256 "4784464ea564da6985e44e56c0a3a7ff6ec17a544f663a1701a757e00b586d13"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/afosto/cli/releases/download/v0.0.19/cli_0.0.19_Linux_x86_64.tar.gz"
      sha256 "75c43e31d368881485b5be12b087e3d405cf40110f0c16372a5872824c963534"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/afosto/cli/releases/download/v0.0.19/cli_0.0.19_Linux_arm64.tar.gz"
      sha256 "5bf69224468d3aee054a52ace9ca85344556809aa018457dd1f4a868d711e9e4"
    end
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
