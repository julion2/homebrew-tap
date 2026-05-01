cask "durian" do
  version "0.3.0"
  sha256 "acbff75e5b736ba19e37e08db8ef3e4dd53ae1c48e36f3bf65d8de9dcd075dd5"

  url "https://github.com/julion2/durian/releases/download/v#{version}/Durian-#{version}.zip"
  name "Durian"
  desc "macOS email client for power users"
  homepage "https://github.com/julion2/durian"

  app "Durian.app"
end
