class Ngstone < Formula
  desc "Self-hosted HTTP tunnel, a personal ngrok alternative"
  homepage "https://github.com/emilio-kariuki/ngstone"
  license "MIT"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.3.0/ngstone_darwin_arm64.tar.gz"
      sha256 "eb54de9db61dcf20642b2204dd1cf5b24189a9e0597a21853b13014110a0e117"
    end
    on_intel do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.3.0/ngstone_darwin_amd64.tar.gz"
      sha256 "c8a1ecbbc804f2529bc3f6fa61d57c8264b8d869e27c38034a03f6b602b57214"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.3.0/ngstone_linux_arm64.tar.gz"
      sha256 "d4b4074f126416a07dc688965ef2ddbf4e6cdaf6b1fd370dfbb3f1a4b83bc9be"
    end
    on_intel do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.3.0/ngstone_linux_amd64.tar.gz"
      sha256 "62139a6c58fb4ea7025fe7ee5872f347c1ca93f2224a829b41d55a0d8730f515"
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
