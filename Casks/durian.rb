cask "durian" do
  version "0.2.1"
  sha256 "d21df024e36e5dc56a4ff85b0c398cfcf43130b5c2d9780aa70493669779140a"

  url "https://github.com/julion2/Durian/releases/download/v#{version}/Durian-#{version}.zip"
  name "Durian"
  desc "macOS email client for power users"
  homepage "https://github.com/julion2/Durian"

  app "Durian.app"
end
