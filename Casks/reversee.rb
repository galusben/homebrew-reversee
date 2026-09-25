cask "reversee" do
  arch arm: "-arm64", intel: ""

  version "2.2.2"
  sha256 arm:   "0cb7c6737c50058c6593c3fe0a46f2cf0e963453ba458ed20a48d98627d3f023",
         intel: "be251c15bec9d92c693c561e4543d15652a2f22ddc1e0b5d096a19a3ff3edfda"

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
