class Durian < Formula
  desc "Fast email client CLI - IMAP sync, SQLite store, HTTP API"
  homepage "https://github.com/julion2/Durian"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/julion2/Durian/releases/download/v#{version}/durian-#{version}-darwin-arm64.tar.gz"
      sha256 "382ea3299475fba91bc07444f859593b526c7b9518fbf747bff5af08a8b2fdd8"
    else
      url "https://github.com/julion2/Durian/releases/download/v#{version}/durian-#{version}-darwin-amd64.tar.gz"
      sha256 "a5f702c22587e84af15991174c00c200744661ff1b4c47f2792b826adf189f39"
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
