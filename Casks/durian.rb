cask "durian" do
  version "0.1.3"
  sha256 "84fd02bda35d7d543a3fca59d0bc514bee90b8cbb14de777fbca6e2ad53bf4c6"

  url "https://github.com/julion2/Durian/releases/download/v#{version}/Durian-#{version}.zip"
  name "Durian"
  desc "macOS email client for power users"
  homepage "https://github.com/julion2/Durian"

  app "Durian.app"
end
