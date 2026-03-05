class NetworkOutput < Formula
  desc "Networking CLI for HTTP, WebSocket, TCP, UDP, DNS, Ping, WHOIS, MQTT, and SSE"
  homepage "https://network-output.com"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/network-output/no/releases/download/v#{version}/no-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/network-output/no/releases/download/v#{version}/no-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/network-output/no/releases/download/v#{version}/no-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/network-output/no/releases/download/v#{version}/no-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "no"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/no --version")
  end
end
