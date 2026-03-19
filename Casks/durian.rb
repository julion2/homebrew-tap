cask "durian" do
  version "0.1.2"
  sha256 "e3c1686cc3cd6982be9fa11ed15d630ae014acf7c5a9bc1b810f71e9730c5db2"

  url "https://github.com/julion2/Durian/releases/download/v#{version}/Durian-#{version}.zip"
  name "Durian"
  desc "macOS email client for power users"
  homepage "https://github.com/julion2/Durian"

  app "Durian.app"
end
