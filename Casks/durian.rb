cask "durian" do
  version "0.2.1"
  sha256 "572c4076e083fbb331fccae7b23070730d9bcd00e0e3d43026c602830b51259a"

  url "https://github.com/julion2/Durian/releases/download/v#{version}/Durian-#{version}.zip"
  name "Durian"
  desc "macOS email client for power users"
  homepage "https://github.com/julion2/Durian"

  app "Durian.app"
end
