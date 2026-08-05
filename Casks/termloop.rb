cask "termloop" do
  version "1.0.21"
  sha256 "1675511b72f0147094348548b4711b244056be67c37b37c63b7cdac83ab93236"

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
