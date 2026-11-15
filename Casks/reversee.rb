cask "reversee" do
  arch arm: "-arm64", intel: ""

  version "2.4.0"
  sha256 arm:   "d8415de1ee16554bbf70c49ef496757bbcdfb648b8474fc78afd9799c36e2993",
         intel: "07838149b2b4be7a24e93483ed181a4600ac3e83bffa0a0daa95657205667d88"

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
