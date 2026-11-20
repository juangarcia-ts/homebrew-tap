cask "coconotch" do
  version "0.4.2"
  sha256 "b5d20f8586a000c70bcc2ae965278d9fa3b245a20749e13f108dce143da65b76"

  url "https://github.com/juangarcia-ts/coconotch/releases/download/v#{version}/CocoNotch-#{version}.zip"
  name "CocoNotch"
  desc "Notch and menu bar widget hub"
  homepage "https://github.com/juangarcia-ts/coconotch"

  auto_updates true
  depends_on macos: :sequoia

  app "CocoNotch.app"

  zap trash: [
    "~/Library/Application Support/CocoNotch",
    "~/Library/Preferences/io.github.juangarcia-ts.CocoNotch.plist",
  ]
end
