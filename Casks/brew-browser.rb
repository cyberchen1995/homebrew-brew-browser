cask "brew-browser" do
  version "0.5.0"
  sha256 "6fd0e9fed31306d98749700185f343129d95b90fc80bfbcda6f3dbf25c098aa7"

  url "https://github.com/msitarzewski/brew-browser/releases/download/v#{version}/brew-browser_#{version}_aarch64.dmg",
      verified: "github.com/msitarzewski/brew-browser/"
  name "brew-browser"
  desc "Native GUI for Homebrew"
  homepage "https://brew-browser.zerologic.com/"

  # auto_updates true: brew-browser has an in-app updater (Settings →
  # Network → Updates, off by default). This tells brew the app updates
  # itself so `brew upgrade` won't fight version drift when a user
  # self-updates. The cask version + sha256 are ALSO bumped every release
  # so `brew upgrade --cask` users stay current (Homebrew 5.2.0+
  # auto-upgrades auto_updates casks when the tap version is newer).
  #
  # depends_on macos ">= :ventura" (Ventura or newer), NOT the bare
  # `:ventura` symbol — the symbol pins to Ventura *exactly* and would
  # block Sonoma/Sequoia/Tahoe. `brew style --fix` rewrites this to the
  # symbol; do not accept that autocorrect, it changes the meaning.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "brew-browser.app"

  zap trash: [
    "~/Library/Application Support/brew-browser",
    "~/Library/Caches/com.zerologic.brew-browser",
    "~/Library/HTTPStorages/com.zerologic.brew-browser",
    "~/Library/Preferences/com.zerologic.brew-browser.plist",
    "~/Library/Saved Application State/com.zerologic.brew-browser.savedState",
    "~/Library/WebKit/com.zerologic.brew-browser",
  ]
end
