cask "termloop" do
  version "1.0.17"
  sha256 "29a0f1197c15e445148bf139cb62817c7a711e5406bb9bb66eb2491d0fd3b8ed"

  url "https://github.com/feritzcan2/termloop/releases/download/v#{version}/termloop-macos.dmg",
      verified: "github.com/feritzcan2/termloop/"
  name "TermLoop"
  desc "Native macOS terminal for AI coding agents"
  homepage "https://termloop.ai"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "TermLoop.app"
  binary "#{appdir}/TermLoop.app/Contents/Resources/bin/termloop"

  zap trash: [
    "~/Library/Application Support/TermLoop",
    "~/Library/Caches/TermLoop",
    "~/Library/Preferences/com.termloop.app.plist",
  ]
end
