cask "reversee" do
  arch arm: "-arm64", intel: ""

  version "2.8.0"
  sha256 arm:   "4ebafb66b1f6530a15f4ecb34a59f8321b431cfd7e32e996283650f7e48db815",
         intel: "4c9834e628b8a6d10fa68a09e6741266b37d586ced2c2190748fba3f3f70837b"

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
