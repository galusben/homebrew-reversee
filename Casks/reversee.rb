cask "reversee" do
  arch arm: "-arm64", intel: ""

  version "2.6.0"
  sha256 arm:   "011b00e993884a92af93d5c7fad01c90626e7bedf2ba268f93e7735879b32f83",
         intel: "b9e822ea8528eeea8c7308294d1ee61c38de28aea57bffe37c1d526b6aef33be"

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
