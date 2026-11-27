cask "appports" do
  version "2.4.0"
  sha256 "93ebce0287a56c23d47c21fc9a289475d1a29d701f87c6a03103cf24f592ce4b"

  url "https://github.com/wzh4869/AppPorts/releases/download/#{version}/AppPorts#{version}.dmg"
  name "AppPorts"
  desc "Move Mac apps and their data to external storage"
  homepage "https://github.com/wzh4869/AppPorts"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "AppPorts.app"

  caveats <<~EOS
    AppPorts is distributed without Apple notarization. macOS may block the first launch.
    See the installation guidance at https://github.com/wzh4869/AppPorts#readme.
  EOS
end
