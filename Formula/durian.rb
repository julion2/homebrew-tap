class Durian < Formula
  desc "Fast email client CLI - IMAP sync, SQLite store, HTTP API"
  homepage "https://github.com/julion2/Durian"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/julion2/Durian/releases/download/v#{version}/durian-#{version}-darwin-arm64.tar.gz"
      sha256 "4779e22cb777915413b34334ca0a8e216d429d96b2dbd5396bf14bd98ed95b17"
    else
      url "https://github.com/julion2/Durian/releases/download/v#{version}/durian-#{version}-darwin-amd64.tar.gz"
      sha256 "8c38b3886ab7ea659226564d99033ba011f2dc25a82ed56a629a49ac5e51bc8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/julion2/Durian/releases/download/v#{version}/durian-#{version}-linux-arm64.tar.gz"
      sha256 "b2b8fc4a0e64e9d68540e5cfda63220201cebd23a377e065514e9222e425e752"
    else
      url "https://github.com/julion2/Durian/releases/download/v#{version}/durian-#{version}-linux-amd64.tar.gz"
      sha256 "178ffe17050e09f22759a07ee4ba6c63c7df048445b90f592c68ab6abbf95fdb"
    end
  end

  def install
    if OS.mac?
      bin.install Hardware::CPU.arm? ? "durian-darwin-arm64" => "durian" : "durian-darwin-amd64" => "durian"
    else
      bin.install Hardware::CPU.arm? ? "durian-linux-arm64" => "durian" : "durian-linux-amd64" => "durian"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/durian --version")
  end
end
