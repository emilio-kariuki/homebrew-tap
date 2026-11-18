class Ngstone < Formula
  desc "Self-hosted HTTP tunnel, a personal ngrok alternative"
  homepage "https://github.com/emilio-kariuki/ngstone"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.6.0/ngstone_darwin_arm64.tar.gz"
      sha256 "15055901cc7ebc3ca2079f373717d419bd067f954aa530c60dd6a03bf743a9e5"
    end
    on_intel do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.6.0/ngstone_darwin_amd64.tar.gz"
      sha256 "c65faafc057fc7a77a4ad6d23db88ec94fb4a2b0feb035781bc32a8ae3a4f0cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.6.0/ngstone_linux_arm64.tar.gz"
      sha256 "a3aa73bca9298aa768f475fca195411cd0aada1d4011c1c2e646e9ae35263d76"
    end
    on_intel do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.6.0/ngstone_linux_amd64.tar.gz"
      sha256 "46c8043dc4fc135c591b91a8bab43b869d860431135ac0fe1018fa748837354c"
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
