cask "durian" do
  version "0.2.1"
  sha256 "90a69a513511451a1374868c2f843a4a6ef72c4306c019daae6b93f602212614"

  url "https://github.com/julion2/Durian/releases/download/v#{version}/Durian-#{version}.zip"
  name "Durian"
  desc "macOS email client for power users"
  homepage "https://github.com/julion2/Durian"

  app "Durian.app"
end
