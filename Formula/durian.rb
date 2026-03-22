class Durian < Formula
  desc "Fast email client CLI - IMAP sync, SQLite store, HTTP API"
  homepage "https://github.com/julion2/Durian"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/julion2/Durian/releases/download/v#{version}/durian-#{version}-darwin-arm64.tar.gz"
      sha256 "1ffdaf4806af45654ebb60fafd74e686a2aa7478ccd05e948601a907fbcdeb37"
    else
      url "https://github.com/julion2/Durian/releases/download/v#{version}/durian-#{version}-darwin-amd64.tar.gz"
      sha256 "01ac55dc9a9b66e527856e4e86a2b68894e793e624d3feb1844d7d74f9a90205"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "durian-darwin-arm64" => "durian"
    else
      bin.install "durian-darwin-amd64" => "durian"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/durian --version")
  end
end
