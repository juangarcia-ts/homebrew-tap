cask "coconotch" do
  version "0.3.0"
  sha256 "b67e95819dd39b54961e0eea774d87c72736a2faf0c8bb8f5e981379858220b9"

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
