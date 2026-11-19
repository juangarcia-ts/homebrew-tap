cask "coconotch" do
  version "0.4.0"
  sha256 "d0c91046aa8939327b923005e62ca9afc2bceaa7043908577478f56dd108ffc5"

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
