cask "nerdpass" do
  version "0.3.0"
  sha256 "6da50e68b748e55e69934d213b6c6f507de3bef33e9edcb325ddb24e894ff8e2"

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
