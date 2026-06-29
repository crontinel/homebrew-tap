class Crontinel < Formula
  desc "CLI tool for Crontinel background job monitoring"
  homepage "https://crontinel.com"
  version "0.1.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/crontinel/cli/releases/download/v0.1.0/crontinel_0.1.0_darwin_arm64.tar.gz"
    sha256 "92d979cf5e8f3832e4b937a217e798751a879ed49efcc7e08e38b628fae1afaa"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/crontinel/cli/releases/download/v0.1.0/crontinel_0.1.0_darwin_amd64.tar.gz"
    sha256 "5176c616a99fdcb29215fb50542fc0833395d1ab4d6bea0963909810511d7340"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/crontinel/cli/releases/download/v0.1.0/crontinel_0.1.0_linux_amd64.tar.gz"
    sha256 "836b509d4330dab8e3ee8b593467abc087427367f60628af20d8d7c9cb89d885"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/crontinel/cli/releases/download/v0.1.0/crontinel_0.1.0_linux_arm64.tar.gz"
    sha256 "024df7dee36ed4e0c5d5b4d46068d3fc0afa8d2db64893d6eae3e78d974bdde7"
  end

  def install
    bin.install "crontinel"
  end

  test do
    system "#{bin}/crontinel", "--help"
  end
end
