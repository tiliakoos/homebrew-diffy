cask "diffy" do
  version "0.9.6"
  sha256 "d984b4afea7bd207b9847450039ef38692da0418a153178e9615c67c382483f9"

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
