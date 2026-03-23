cask "durian" do
  version "0.1.5"
  sha256 "22462ce28b495a6d650d5f23bf7f1f8bc5dfcc2f0ea81d14b748123f9e61a1f4"

  url "https://github.com/julion2/Durian/releases/download/v#{version}/Durian-#{version}.zip"
  name "Durian"
  desc "macOS email client for power users"
  homepage "https://github.com/julion2/Durian"

  app "Durian.app"
end
