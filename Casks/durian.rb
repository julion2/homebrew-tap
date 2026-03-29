cask "durian" do
  version "0.2.1"
  sha256 "f22dfaae4bf50de823b8d9dfc70878da40c8be177953156f88a87ff374f21df6"

  url "https://github.com/julion2/Durian/releases/download/v#{version}/Durian-#{version}.zip"
  name "Durian"
  desc "macOS email client for power users"
  homepage "https://github.com/julion2/Durian"

  app "Durian.app"
end
