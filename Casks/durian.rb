cask "durian" do
  version "0.1.3"
  sha256 "0a90386f7fe4bac52ed539c6ba5346117d17225be9f12187dc48887606bc0d79"

  url "https://github.com/julion2/Durian/releases/download/v#{version}/Durian-#{version}.zip"
  name "Durian"
  desc "macOS email client for power users"
  homepage "https://github.com/julion2/Durian"

  app "Durian.app"
end
