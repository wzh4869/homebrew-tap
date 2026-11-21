cask "appports" do
  version "2.3.0"
  sha256 "e8084f715f5f49b71a46a52eeea5ed66d112c1418b7138fab6c898877d9f2b6f"

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
