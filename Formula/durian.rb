class Durian < Formula
  desc "Fast email client CLI - IMAP sync, SQLite store, HTTP API"
  homepage "https://github.com/julion2/Durian"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/julion2/Durian/releases/download/v#{version}/durian-#{version}-darwin-arm64.tar.gz"
      sha256 "83efdfe1b07dc9f0e79b36751a89a064fe60f3196f5fbadc9af12586e56dc9d7"
    else
      url "https://github.com/julion2/Durian/releases/download/v#{version}/durian-#{version}-darwin-amd64.tar.gz"
      sha256 "d672ca6b897636898a39fdb35b5407ce5ac5f382b5858693cfc8498c0bba73c9"
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
