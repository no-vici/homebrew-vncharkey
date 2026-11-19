cask "vncharkey" do
  version "0.3.7"
  sha256 "b74c9c41ea421185e07ce60546a711cf3178c3da9fe2404d6f510f3b26977029"

  url "https://github.com/no-vici/vncharkey/releases/download/v#{version}/VnCharKey-#{version}.dmg"
  name "vnchKey"
  desc "Bộ gõ Tiếng Việt mượt mà cho macOS"
  homepage "https://github.com/no-vici/vncharkey"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Tự động gỡ cờ cách ly (Quarantine) của macOS Gatekeeper khi cài qua Homebrew
  app "VnCharKey.app"

  zap trash: [
    "~/Library/Preferences/com.vncharkey.macos.plist",
    "~/Library/Application Support/VnCharKey",
  ]
end
