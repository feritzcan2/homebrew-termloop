cask "termloop" do
  version "1.0.18"
  sha256 "df902d5bf31132054d7c52e5e0e0167a90b8f7b6e46da1a7b47cf220b99d8268"

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
