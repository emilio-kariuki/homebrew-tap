class Ngstone < Formula
  desc "Self-hosted HTTP tunnel, a personal ngrok alternative"
  homepage "https://github.com/emilio-kariuki/ngstone"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.1.0/ngstone_darwin_arm64.tar.gz"
      sha256 "806aa9f36188f1436f95ed2e9cf6678246e3e113e77ec2826f9f3778e88549b4"
    end
    on_intel do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.1.0/ngstone_darwin_amd64.tar.gz"
      sha256 "4de5cad5977f27956996ee1335adeeb2e6b49e1bbc712b333a387215160bf37b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.1.0/ngstone_linux_arm64.tar.gz"
      sha256 "d3066eb83b29f837e212f6d111a3fad9dccd879f0a80d3ffbf207459aa60288b"
    end
    on_intel do
      url "https://github.com/emilio-kariuki/ngstone/releases/download/v0.1.0/ngstone_linux_amd64.tar.gz"
      sha256 "859a7863e61cb6eed4deaa1888b999071e92434daad6132579524af59c5ed496"
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
