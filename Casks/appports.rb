cask "appports" do
  version "2.3.1"
  sha256 "e6b1c5c2ba8c3e24b95dd849735a0e3a4c57a0b144dab946b9e0146c2856609e"

  url "https://github.com/wzh4869/AppPorts/releases/download/#{version}/AppPorts#{version}.dmg"
  name "AppPorts"
  desc "Move Mac apps and their data to external storage"
  homepage "https://github.com/wzh4869/AppPorts"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "AppPorts.app"

  caveats <<~EOS
    AppPorts is distributed without Apple notarization. macOS may block the first launch.
    See the installation guidance at https://github.com/wzh4869/AppPorts#readme.
  EOS
end
