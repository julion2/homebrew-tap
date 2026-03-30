class Durian < Formula
  desc "Fast email client CLI - IMAP sync, SQLite store, HTTP API"
  homepage "https://github.com/julion2/Durian"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/julion2/Durian/releases/download/v#{version}/durian-#{version}-darwin-arm64.tar.gz"
      sha256 "2f0a87bb0b2595d1b5ebd4317a1e92077becbb0f1b15f60700ef4facbc56e467"
    else
      url "https://github.com/julion2/Durian/releases/download/v#{version}/durian-#{version}-darwin-amd64.tar.gz"
      sha256 "70ea60b6b2a1356f0f9148cc9822b9638ac132da01f4c21edaeb935d32a465c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/julion2/Durian/releases/download/v#{version}/durian-#{version}-linux-arm64.tar.gz"
      sha256 "4070f70c59a3fe1f45bc302e48b46a035b3f0afbbf2041bf1301dd8fb6d73f44"
    else
      url "https://github.com/julion2/Durian/releases/download/v#{version}/durian-#{version}-linux-amd64.tar.gz"
      sha256 "7dd5880420d8554aadb21524c8c25d34faab019513bdaea7594c6d0e5ee9e1a9"
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
