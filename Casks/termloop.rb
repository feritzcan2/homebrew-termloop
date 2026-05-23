cask "termloop" do
  version "1.0.11"
  sha256 "f5c1b3445c9d5fc41254101fb0bebc6fee2ed80eaf17903d929ce2cf034a2385"

  url "https://github.com/feritzcan2/termloop/releases/download/v#{version}/termloop-macos.dmg"
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
