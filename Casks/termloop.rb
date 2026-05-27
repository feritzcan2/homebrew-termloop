cask "termloop" do
  version "1.0.16"
  sha256 "caf1b2f6887974709cc5db7606df1a3deb39b7afeb6ba58b00f65ae0468733dd"

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
