cask "reversee" do
  arch arm: "-arm64", intel: ""

  version "2.5.0"
  sha256 arm:   "6e414becad4b6fad526a1a4f40e9628a6e17d1cc5823d7f445be0ed1f89e89ed",
         intel: "7affce693129ef0077a24169d031f51ce781535b69b34b881e3d33a4990813e5"

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
