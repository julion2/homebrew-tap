cask "durian" do
  version "0.2.1"
  sha256 "3ad7f9084d44ba3ddecaecf26ac46c669d6c27e03cb71c6be92667ce5004fa68"

  url "https://github.com/julion2/Durian/releases/download/v#{version}/Durian-#{version}.zip"
  name "Durian"
  desc "macOS email client for power users"
  homepage "https://github.com/julion2/Durian"

  app "Durian.app"
end
