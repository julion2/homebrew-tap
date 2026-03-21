class Durian < Formula
  desc "Fast email client CLI - IMAP sync, SQLite store, HTTP API"
  homepage "https://github.com/julion2/Durian"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/julion2/Durian/releases/download/v\#{version}/durian-\#{version}-darwin-arm64.tar.gz"
      sha256 "0409e57229b33b9ca1605f7d32ab8661e2ab761d84f07f4b93f0321215aa7d91"
    else
      url "https://github.com/julion2/Durian/releases/download/v\#{version}/durian-\#{version}-darwin-amd64.tar.gz"
      sha256 "3c7b6648250ae02c4fa546c1aa21aafea6eea1ca74aecfbdcf09c9d0f9d20a88"
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
    assert_match version.to_s, shell_output("\#{bin}/durian --version")
  end
end
