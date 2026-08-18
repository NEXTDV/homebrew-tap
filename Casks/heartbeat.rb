cask "heartbeat" do
  version "0.1.0"
  sha256 "ef15654d9070f4181233ab5a4e317b8f053cf904c3155ca5997bd17bffc9f083"

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
