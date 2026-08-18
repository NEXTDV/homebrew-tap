cask "heartbeat" do
  version "0.1.3"
  sha256 "bf7a784d807d057a32f5d84693804e1e668e32ef770ad6bc93661c292779265d"

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
