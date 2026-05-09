cask "openisland" do
  version "1.0.30"
  sha256 "8d959ee88cc774c2cde85df0f50e29c6e4c2738bfcd9aecd6ddccf0f53310aed"

  url "https://github.com/Octane0411/open-vibe-island/releases/download/v#{version}/Open.Island.dmg",
      verified: "github.com/Octane0411/open-vibe-island/"
  name "Open Island"
  desc "Native companion app for AI coding agents"
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
