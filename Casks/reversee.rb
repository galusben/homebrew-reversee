cask "reversee" do
  arch arm: "-arm64", intel: ""

  version "2.2.3"
  sha256 arm:   "c87ad81fd16ebde9148879b31cf3d82c908569ec7e8c5a568a7713b41112e2f7",
         intel: "83b1963ce0094638851f4967aa9531f2f4a6548bee2631d525d3b2da64c7fd4c"

  url "https://github.com/galusben/reversee/releases/download/v#{version}/Reversee-#{version}#{arch}.dmg"
  name "Reversee"
  desc "Reverse-proxy web debugger"
  homepage "https://github.com/galusben/reversee"

  auto_updates true

  app "Reversee.app"
  # Puts a reversee binary on PATH for agents to run it headless.
  binary "#{appdir}/Reversee.app/Contents/MacOS/Reversee", target: "reversee"

  zap trash: [
    "~/Library/Application Support/Reversee",
    "~/Library/Logs/Reversee",
    "~/Library/Preferences/ninja.reversee.plist",
    "~/Library/Saved Application State/ninja.reversee.savedState",
  ]
end
