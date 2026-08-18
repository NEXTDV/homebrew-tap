cask "heartbeat" do
  version "0.1.1"
  sha256 "bfc39298af760c164d746952b782f07a5e4c7fc34f21594b667405ec1a003c7f"

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
