class Durian < Formula
  desc "Fast email client CLI - IMAP sync, SQLite store, HTTP API"
  homepage "https://github.com/julion2/Durian"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/julion2/Durian/releases/download/v#{version}/durian-#{version}-darwin-arm64.tar.gz"
      sha256 "f59fa352a39c7fa63e4f93ab8a780ff3891fc6f9076e2679ce53ae975caecc5c"
    else
      url "https://github.com/julion2/Durian/releases/download/v#{version}/durian-#{version}-darwin-amd64.tar.gz"
      sha256 "0cb67eb2930b1116adb5694a3421b7616f971310fc7625e0edcee1449b88f9ab"
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
