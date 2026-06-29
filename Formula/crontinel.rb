class Crontinel < Formula
  desc "CLI tool for Crontinel background job monitoring"
  homepage "https://crontinel.com"
  version "0.1.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/crontinel/cli/releases/download/v0.1.0/crontinel_0.1.0_darwin_arm64.tar.gz"
    sha256 "940a2498006bad8bfa43bbb4e5952a4cb8b0f9324380cea16fc2a49d5d8c68c2"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/crontinel/cli/releases/download/v0.1.0/crontinel_0.1.0_darwin_amd64.tar.gz"
    sha256 "0e869639f59d0241a0309b6cb49684bf303d89ed5d71b7803c43a94a6ea15ea1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/crontinel/cli/releases/download/v0.1.0/crontinel_0.1.0_linux_amd64.tar.gz"
    sha256 "897ec0f8b31ca32b3fd8d99623797b45eaae55367e636c755e08680dc3bf368c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/crontinel/cli/releases/download/v0.1.0/crontinel_0.1.0_linux_arm64.tar.gz"
    sha256 "bf1cb90ee72e4154f11d5f963694b7a12865040d7c56e28fbefee65750549e4b"
  end

  def install
    bin.install "crontinel"
  end

  test do
    system "#{bin}/crontinel", "--help"
  end
end
