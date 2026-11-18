cask "reversee" do
  arch arm: "-arm64", intel: ""

  version "2.7.0"
  sha256 arm:   "27f32e448f230bdd3a10a7510f64158462780bebf9ae5829add99667b62421a1",
         intel: "da69c6c654ca02bcd2cb170ebb8cff8334658f62bdc044132117965a65c6f9ae"

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
