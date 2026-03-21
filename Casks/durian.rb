cask "durian" do
  version "0.1.3"
  sha256 "12c084d0ba81225e1481f405e481c94f14f47546ffc55a9ddc52e9df791036e6"

  url "https://github.com/julion2/Durian/releases/download/v\#{version}/Durian-\#{version}.zip"
  name "Durian"
  desc "macOS email client for power users"
  homepage "https://github.com/julion2/Durian"

  app "Durian.app"
end
