class Durian < Formula
  desc "Fast email client CLI - IMAP sync, SQLite store, HTTP API"
  homepage "https://github.com/julion2/Durian"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/julion2/Durian/releases/download/v#{version}/durian-#{version}-darwin-arm64.tar.gz"
      sha256 "9f87f550483aab0c9556dd1197ff7de0bc67de822aee6c674055ef7ae245473e"
    else
      url "https://github.com/julion2/Durian/releases/download/v#{version}/durian-#{version}-darwin-amd64.tar.gz"
      sha256 "26789fa0919556496573bbf2ef43f53b9254c26dc6e786f8cf8820d9f2913230"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/julion2/Durian/releases/download/v#{version}/durian-#{version}-linux-arm64.tar.gz"
      sha256 "2b0f3922d5d87f0234988f2dae9b1f0baf1041ffbc8e965d43a49b67aba1ce91"
    else
      url "https://github.com/julion2/Durian/releases/download/v#{version}/durian-#{version}-linux-amd64.tar.gz"
      sha256 "564a73c308b304ea09e5afdbb935521aea7ab9f66722d5af64848db2929c89e5"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "durian-darwin-arm64" => "durian"
      else
        bin.install "durian-darwin-amd64" => "durian"
      end
    else
      if Hardware::CPU.arm?
        bin.install "durian-linux-arm64" => "durian"
      else
        bin.install "durian-linux-amd64" => "durian"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/durian --version")
  end
end
