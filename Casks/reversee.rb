cask "reversee" do
  arch arm: "-arm64", intel: ""

  version "2.1.0"
  sha256 arm:   "7930cef31b31c21b6b7dc9e93bb8a81abe9848b08b93201aad4ba75241ccf647",
         intel: "1fd2f04170e0d34d2feb8bf951cfb10938e5d1cf89c9f0516af30e90137c4a01"

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
