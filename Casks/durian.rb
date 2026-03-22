cask "durian" do
  version "0.1.4"
  sha256 "b74e16c82fdd04890257885334d45078ff2305ae2e90a8ba60e16882088591f2"

  url "https://github.com/julion2/Durian/releases/download/v#{version}/Durian-#{version}.zip"
  name "Durian"
  desc "macOS email client for power users"
  homepage "https://github.com/julion2/Durian"

  app "Durian.app"
end
