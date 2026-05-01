class Durian < Formula
  desc "Fast email client CLI - IMAP sync, SQLite store, HTTP API"
  homepage "https://github.com/julion2/durian"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/julion2/durian/releases/download/v#{version}/durian-#{version}-darwin-arm64.tar.gz"
      sha256 "a2062524367a877140bab07c6bd12ace358e463701f4b9788c7e3c80e5a91963"
    else
      url "https://github.com/julion2/durian/releases/download/v#{version}/durian-#{version}-darwin-amd64.tar.gz"
      sha256 "bae9ac67f76bc6455a22c03945455790ecfde5559cb97226ce465f786e922a1a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/julion2/durian/releases/download/v#{version}/durian-#{version}-linux-arm64.tar.gz"
      sha256 "9366e06f6d86369a04412074f62d470dd965503722499bac036b1f158c390644"
    else
      url "https://github.com/julion2/durian/releases/download/v#{version}/durian-#{version}-linux-amd64.tar.gz"
      sha256 "a29b8f755a63b3accf178a33b2bf01b0de58d08d2f0b69c317b952224531c27f"
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

    generate_completions_from_executable(bin/"durian", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/durian --version")
  end
end
