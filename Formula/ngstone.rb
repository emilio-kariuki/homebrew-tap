class Ngstone < Formula
  desc "Self-hosted HTTP tunnel, a personal ngrok alternative"
  homepage "https://github.com/emilio-kariuki/ngstone"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.3.2/ngstone_darwin_arm64.tar.gz"
      sha256 "612d02fea3c2266e226f05aaa7f2b7380ba9042c1715b44f897786bd86a84fd9"
    end
    on_intel do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.3.2/ngstone_darwin_amd64.tar.gz"
      sha256 "727b0464770b1d653e8a81191ed9a708b3745129ac95f286cbd91a25ea9c47d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.3.2/ngstone_linux_arm64.tar.gz"
      sha256 "b12b07ec658b81377cb086841d2cc27f1bcb9a068bd503b8677bc754883f7eb7"
    end
    on_intel do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.3.2/ngstone_linux_amd64.tar.gz"
      sha256 "cf97eb62779d0b14cf763739d4ee26f13b874f9ff9ada266062a7fed984a0013"
    end
  end

  def install
    bin.install "ngstone"
    bin.install "ngstoned"
  end

  test do
    output = shell_output("#{bin}/ngstone -version")
    assert_match "ngstone", output
  end
end
