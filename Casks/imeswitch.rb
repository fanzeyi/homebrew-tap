cask "imeswitch" do
  version "0.2.0"
  sha256 "aa639dcd6e744fa8b6e74320997404a1d8e339958b363d9974f0d75ed8f0c145"

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
