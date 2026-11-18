cask "reversee" do
  arch arm: "-arm64", intel: ""

  version "2.7.1"
  sha256 arm:   "f0f91616cc8a98b6acdcc8be7c53462f8399daff8cf797f9271e1838ba092b88",
         intel: "90aa979d9361cbc364e7b0fcb655cae363ecc2b95c771ec55a5c2a5c8ffb9c96"

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
