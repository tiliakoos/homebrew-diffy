cask "diffy" do
  version "0.12.0"
  sha256 "a26488048e5db85ec75ccc4af1e4274b5680915e93192450e4724193dc58a09e"

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
