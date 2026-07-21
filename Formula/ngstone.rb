class Ngstone < Formula
  desc "Self-hosted HTTP tunnel, a personal ngrok alternative"
  homepage "https://github.com/emilio-kariuki/ngstone"
  license "MIT"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.2.0/ngstone_darwin_arm64.tar.gz"
      sha256 "bc0c0286aeccf2d00ffabf980baf9d5f4d6d26d621f898d4f46decb0ce263f3d"
    end
    on_intel do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.2.0/ngstone_darwin_amd64.tar.gz"
      sha256 "246fe839e8cc643964c5aa1aeb8fcd75024c39910933be9bcb4c3f9b603d5527"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.2.0/ngstone_linux_arm64.tar.gz"
      sha256 "74c001e5579f05e282612e27c4d6514b2d6aa8273cbb77276496a0895abb5ace"
    end
    on_intel do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.2.0/ngstone_linux_amd64.tar.gz"
      sha256 "bf19469bad0c58851983b9dcebe799d144b517177f0ad3bb6c7940c619d38c43"
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
