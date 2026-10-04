cask "imeswitch" do
  version "0.1.0"
  sha256 "d3cf0d1b6d6c67cacf1fa68f15b54aa1517016603bad622db002f8c870188db9"

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
