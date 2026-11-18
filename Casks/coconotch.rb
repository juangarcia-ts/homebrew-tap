cask "coconotch" do
  version "0.2.0"
  sha256 "dfa90a9c08010faffc006cf31dfa476993e9f1f0ca2811a05c7489d8169f269d"

  url "https://github.com/juangarcia-ts/coconotch/releases/download/v#{version}/CocoNotch-#{version}.zip"
  name "CocoNotch"
  desc "Notch and menu bar widget hub"
  homepage "https://github.com/juangarcia-ts/coconotch"

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "CocoNotch.app"

  zap trash: [
    "~/Library/Application Support/CocoNotch",
    "~/Library/Preferences/io.github.juangarcia-ts.CocoNotch.plist",
  ]
end
