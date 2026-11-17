cask "coconotch" do
  version "0.1.0"
  sha256 "42b7bfc0283da0b0185ca18b0fb50fd4a8659b96cff6b5c2fe767a611529bbb5"

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
