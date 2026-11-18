class Ngstone < Formula
  desc "Self-hosted HTTP tunnel, a personal ngrok alternative"
  homepage "https://github.com/emilio-kariuki/ngstone"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.6.0/ngstone_darwin_arm64.tar.gz"
      sha256 "0ce5cb9c45a939b5b0d251615cb9aeed5fa2d10f82166b9f9e2ad3441c429a27"
    end
    on_intel do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.6.0/ngstone_darwin_amd64.tar.gz"
      sha256 "36b396662762c6190c33d99c6d234f768725bd7d144fbc9da1769178f56705aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.6.0/ngstone_linux_arm64.tar.gz"
      sha256 "5b5ce0dffa37f4f80c02f9e2cacf69458704eb825aed3c217fdae7c61cc04020"
    end
    on_intel do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.6.0/ngstone_linux_amd64.tar.gz"
      sha256 "f9934e52fb1c8db2c5f4ce38bcf1480d37201029950b700bcb0dfa969324792d"
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
