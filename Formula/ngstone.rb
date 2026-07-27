class Ngstone < Formula
  desc "Self-hosted HTTP tunnel, a personal ngrok alternative"
  homepage "https://github.com/emilio-kariuki/ngstone"
  license "MIT"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.3.1/ngstone_darwin_arm64.tar.gz"
      sha256 "8a111c452e3f2f2f43f54fb29f18f483ca07a27ead697963bb2207c266da9c54"
    end
    on_intel do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.3.1/ngstone_darwin_amd64.tar.gz"
      sha256 "d7e94c01af313ecca35b4e89533914bbb9d57234d70129ae039d207acd84f3d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.3.1/ngstone_linux_arm64.tar.gz"
      sha256 "ffe720ea9aa2975b035f4fd2b59217baa3d194f8c74c71f8435fa608b800456f"
    end
    on_intel do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.3.1/ngstone_linux_amd64.tar.gz"
      sha256 "6dbde9ecb60fbb01f6e6b507587f89b103f44eb12ff9f0d88cceb98536e2fe8d"
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
