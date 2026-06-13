cask "reversee" do
  arch arm: "-arm64", intel: ""

  version "2.0.0"
  sha256 arm:   "aef5d9debb673fdb49c96869e3ff11593b6d48787e0548978483a8ad9e31b36a",
         intel: "14aad09715ba1c7542039b6cc12270d20d4c44429b333f6ca5b14fb223ed6140"

  url "https://github.com/galusben/reversee/releases/download/v#{version}/Reversee-#{version}#{arch}.dmg"
  name "Reversee"
  desc "Reverse-proxy web debugger"
  homepage "https://github.com/galusben/reversee"

  auto_updates true

  app "Reversee.app"

  zap trash: [
    "~/Library/Application Support/Reversee",
    "~/Library/Logs/Reversee",
    "~/Library/Preferences/ninja.reversee.plist",
    "~/Library/Saved Application State/ninja.reversee.savedState",
  ]
end
