cask "diffy" do
  version "0.11.2"
  sha256 "cb2674cb141b8a6041c02ed9e2e8fe57dadbe0d425b272d802b16719de3c489b"

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
