class Crontinel < Formula
  desc "CLI tool for Crontinel background job monitoring"
  homepage "https://crontinel.com"
  version "0.1.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/crontinel/cli/releases/download/v0.1.1/crontinel_0.1.1_darwin_arm64.tar.gz"
    sha256 "6b6750da4fa200f93b8e31bb5156af32fca890763c5d2805d8997fb313814aac"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/crontinel/cli/releases/download/v0.1.1/crontinel_0.1.1_darwin_amd64.tar.gz"
    sha256 "b7adf126525dff61e3b3854522db27f08088cf5fc2ffed79b21f06607a9bcf7f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/crontinel/cli/releases/download/v0.1.1/crontinel_0.1.1_linux_amd64.tar.gz"
    sha256 "90f76fb407c381faefc0103f26896010ca7d8ebd1addd4f0308ce93d56e6ac5b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/crontinel/cli/releases/download/v0.1.1/crontinel_0.1.1_linux_arm64.tar.gz"
    sha256 "20e88fe232ba6c445d6d448eb4912c80bca1851e8bd8d3b69bacbbfa4cba5b03"
  end

  def install
    bin.install "crontinel"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/crontinel --help")
  end
end
