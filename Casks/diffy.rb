cask "diffy" do
  version "0.10.0"
  sha256 "719e9df5e8dfb428fd6d7c073e80e08f66581dd5b4a04bbb64ff3ad555c7c6a5"

  url "https://github.com/tiliakoos/diffy/releases/download/v#{version}/Diffy-#{version}.zip"
  name "Diffy"
  desc "Menu bar app for local Git diffs and recent commit history"
  homepage "https://github.com/tiliakoos/diffy"

  depends_on macos: :tahoe

  app "Diffy.app"

  zap trash: "~/Library/Application Support/Diffy"

  caveats <<~EOS
    Diffy is ad-hoc signed and not notarized. After install or upgrade, clear quarantine with:
      xattr -dr com.apple.quarantine /Applications/Diffy.app
  EOS
end
