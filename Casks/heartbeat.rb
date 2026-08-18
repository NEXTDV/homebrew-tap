cask "heartbeat" do
  version "0.1.6"
  sha256 "15ecd9623e5ee7b10afdd6d697c953bccc7df5c2a8f051e50a562ebea603c2bd"

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
