cask "durian" do
  version "0.2.2"
  sha256 "df01936049f5fb19fe9cf847d5059641e1b92819ede4c797d577ea6ba323586b"

  url "https://github.com/julion2/Durian/releases/download/v#{version}/Durian-#{version}.zip"
  name "Durian"
  desc "macOS email client for power users"
  homepage "https://github.com/julion2/Durian"

  app "Durian.app"
end
