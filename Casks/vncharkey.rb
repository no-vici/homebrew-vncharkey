cask "vncharkey" do
  version "0.3.7"
  sha256 "sha256:8be7013d7f2079ef3c2bd46718d05fb919e43c1609cb64d64bc7b9060a1f1f06"

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
