cask "vncharkey" do
  version "0.3.7"
  sha256 "ac597c821952cb7ba256ab18381b02308c34a43283bb51a3515d74dbb32c6663"

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
