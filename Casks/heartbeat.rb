cask "heartbeat" do
  version "0.1.4"
  sha256 "433e24f506fdd71e3c92afd892cdf48c98647ee02f62b9dcb4d0eaa64616e1b5"

  url "https://github.com/NEXTDV/homebrew-tap/releases/download/v#{version}/Heartbeat-#{version}-arm64.dmg"
  name "Heartbeat"
  desc "구독한 서비스 상태를 macOS 메뉴바에서 보는 앱"
  homepage "https://github.com/NEXTDV/heartbeat-app"

  depends_on arch: :arm64

  app "Heartbeat.app"

  zap trash: [
    "~/Library/Application Support/heartbeat",
    "~/Library/Preferences/com.nextdv.heartbeat.plist",
  ]
end
