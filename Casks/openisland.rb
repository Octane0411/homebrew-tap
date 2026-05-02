cask "openisland" do
  version "1.0.28"
  sha256 "2f467e05527c484d16c1b957dc57d8e7e9ec9ddaf8fd53211f33ffad67f44a90"

  url "https://github.com/Octane0411/open-vibe-island/releases/download/v#{version}/Open.Island.dmg",
      verified: "github.com/Octane0411/open-vibe-island/"
  name "Open Island"
  desc "Native macOS companion app for AI coding agents"
  homepage "https://github.com/Octane0411/open-vibe-island"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Open Island.app"

  zap trash: [
    "~/Library/Application Support/Open Island",
    "~/Library/Caches/app.openisland.OpenIsland",
    "~/Library/HTTPStorages/app.openisland.OpenIsland",
    "~/Library/Preferences/app.openisland.OpenIsland.plist",
    "~/Library/Saved Application State/app.openisland.OpenIsland.savedState",
  ]
end
