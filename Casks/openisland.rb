cask "openisland" do
  version "1.1.7"
  sha256 "48b33f946b12ca972762bd8e2bb176bac29fe4bf963d27840f1b211e0a0e131f"

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
