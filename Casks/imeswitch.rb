cask "imeswitch" do
  version "0.2.1"
  sha256 "5d9b54f57aa13f17d99478b4b2f455dc5bc7df1b77688721e87ca1b5f15b64be"

  url "https://github.com/fanzeyi/ime-switch/releases/download/#{version}/IMESwitch.zip"
  name "IMESwitch"
  desc "Switch input sources in most-recently-used order with Command-Space"
  homepage "https://github.com/fanzeyi/ime-switch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "IMESwitch.app"

  uninstall quit: "fan.zeyi.IMESwitch"

  zap trash: "~/Library/Preferences/fan.zeyi.IMESwitch.plist"
end
