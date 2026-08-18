cask "heartbeat" do
  version "0.1.2"
  sha256 "643b66a9f2de2b0ab88366ae6f514d96eb33116281a7e2f116469719edc04a70"

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
