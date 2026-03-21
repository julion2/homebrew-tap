cask "durian" do
  version "0.1.3"
  sha256 "f7993eaee04556235b966d301059605d239e4a78eccefa295836c04ba7234b9f"

  url "https://github.com/julion2/Durian/releases/download/v#{version}/Durian-#{version}.zip"
  name "Durian"
  desc "macOS email client for power users"
  homepage "https://github.com/julion2/Durian"

  app "Durian.app"
end
