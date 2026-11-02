cask "nerdpass" do
  version "0.4.0"
  sha256 "9b57447b7355e6462d00c47c6b9c14c8d8ef18c1cbb2767b2d6194366cfc3d5a"

  url "https://github.com/grumpitect/nerdpass/releases/download/v#{version}/Nerdpass-#{version}.zip"
  name "Nerdpass"
  desc "Menu bar app that plays a capture card's sound through the Mac"
  homepage "https://github.com/grumpitect/nerdpass"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Nerdpass.app"

  uninstall quit: "com.nerdative.nerdpass"

  zap trash: [
    "~/Library/Preferences/com.nerdative.nerdpass.plist",
  ]

  caveats <<~EOS
    Nerdpass is free and not notarized by Apple. The first time you open it, macOS will say it
    can't verify the developer: open System Settings > Privacy & Security and click "Open Anyway".
    You only need to do this once.
  EOS
end
