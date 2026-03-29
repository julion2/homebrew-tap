cask "durian" do
  version "0.2.0"
  sha256 "ee2c10ea3f7c4639a7d1d7ad37d0ea29726b9ce1f5f1f0fef99cc2f16b066323"

  url "https://github.com/julion2/Durian/releases/download/v#{version}/Durian-#{version}.zip"
  name "Durian"
  desc "macOS email client for power users"
  homepage "https://github.com/julion2/Durian"

  app "Durian.app"
end
