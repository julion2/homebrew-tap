cask "durian" do
  version "0.1.3"
  sha256 "6002fdb9ed242722b6a689d6e9b481dc6f96f4a6adee0caca19fa72a8ae6d4e5"

  url "https://github.com/julion2/Durian/releases/download/v#{version}/Durian-#{version}.zip"
  name "Durian"
  desc "macOS email client for power users"
  homepage "https://github.com/julion2/Durian"

  app "Durian.app"
end
