class Ngstone < Formula
  desc "Self-hosted HTTP tunnel, a personal ngrok alternative"
  homepage "https://github.com/emilio-kariuki/ngstone"
  license "MIT"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.2.1/ngstone_darwin_arm64.tar.gz"
      sha256 "499a841edf695d6f01eb38dfbc7a3efc5e33f9f18b0f2673d5c6e0c0447fcbf3"
    end
    on_intel do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.2.1/ngstone_darwin_amd64.tar.gz"
      sha256 "c050972aea264cf7e344580527ac3d6f7d28c1a1ec2a8f95d16bc870d92e088b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.2.1/ngstone_linux_arm64.tar.gz"
      sha256 "4dd3c903b22bf29ebebadd400526bc84619462acbc10e05ffafccf718f6e5f4b"
    end
    on_intel do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.2.1/ngstone_linux_amd64.tar.gz"
      sha256 "047bae1b9338123128449f14397afcceeffdf9ee44dc20d97fbd61869a4548cd"
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
