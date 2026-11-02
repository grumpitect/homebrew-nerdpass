cask "nerdpass" do
  version "0.2.1"
  sha256 "b6cc1d6f2e25d1e76bf55f5b5ab08757fd84ed2b48488e7196c18a5340e6aeac"

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
