cask "reversee" do
  arch arm: "-arm64", intel: ""

  version "2.3.0"
  sha256 arm:   "962fe5f42e623cc75d7d9eff77cd0dc9691de5f599c44334dfc600ec3607fe53",
         intel: "68db93bff9ae855bb487e7cea1ece9cb3b1f381bf5494879924347c7c9fce139"

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
