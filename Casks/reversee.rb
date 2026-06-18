cask "reversee" do
  arch arm: "-arm64", intel: ""

  version "2.2.0"
  sha256 arm:   "420a52c9d16068020b0b1494831a92cf39dba19a702135bb61ac6d1eb75cd695",
         intel: "a3406b7599c584ec9fb67f9d25e2e92b3f72140982c060d5154a864c11b0f067"

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
