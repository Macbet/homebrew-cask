cask "popo" do
  version "3.55.0"
  sha256 "ab94ced67dcfbb1992c6725210c152b214fa1d074be2499d37f355dec7b3bda6"

  url "https://popo.netease.com/file/popomac/POPO-setup_#{version.dots_to_underscores}.dmg"
  name "NetEase POPO"
  desc "Instant messaging platform"
  homepage "https://popo.netease.com/"

  livecheck do
    url "https://popo.netease.com/api/open/jsonp/check_version?device=4&callback="
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  app "popo_mac.app"

  zap trash: [
    "~/Library/Application Support/Netease/Popo",
    "~/Library/Caches/com.netease.game.popo",
    "~/Library/Preferences/com.netease.game.popo.plist",
    "~/Library/Saved Application State/com.netease.game.popo.savedState",
  ]
end
