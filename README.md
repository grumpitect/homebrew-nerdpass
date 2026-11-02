# Homebrew tap for Nerdpass

[Nerdpass](https://github.com/grumpitect/nerdpass) is a free, open-source menu bar app that plays a capture card's
sound through your Mac.

```bash
brew tap grumpitect/nerdpass
brew trust grumpitect/nerdpass
brew install --cask nerdpass
```

Homebrew asks you to trust third-party taps once (`brew trust`). Update later with `brew upgrade --cask nerdpass`. Nerdpass is not notarized by Apple, so the first launch needs
**System Settings > Privacy & Security > Open Anyway** once.

This tap is updated automatically by Nerdpass's release script.
