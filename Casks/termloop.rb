cask "termloop" do
  version "1.0.14"
  sha256 "3fae5adbaee2ed2d8393ff40c9b8b8770a0b51bb31d4960ae9ecbe31e84b6f4b"

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
