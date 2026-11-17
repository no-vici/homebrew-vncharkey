cask "vncharkey" do
  version "0.3.6"
  sha256 "sha256:cdeeb043ea132a04b7a01a6f46021baeace8a236a8f52095a5acb85ae1661b5b"

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
