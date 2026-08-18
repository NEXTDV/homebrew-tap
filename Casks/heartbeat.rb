cask "heartbeat" do
  version "0.1.0"
  sha256 "2bdde7fae5eb8237a1e7793c9f740f3cf3544d872c2b9e1e8ca87d0fa7bf2806"

  url "https://github.com/NEXTDV/heartbeat-app/releases/download/v#{version}/Heartbeat-#{version}-arm64.dmg"
  name "Heartbeat"
  desc "구독한 서비스 상태를 macOS 메뉴바에서 보는 앱"
  homepage "https://github.com/NEXTDV/heartbeat-app"

  depends_on arch: :arm64

  app "Heartbeat.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Heartbeat.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/heartbeat",
    "~/Library/Preferences/com.nextdv.heartbeat.plist",
  ]
end
