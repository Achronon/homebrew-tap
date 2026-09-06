class Cvps < Formula
  desc "ClaudeVPS CLI - Manage remote development sandboxes"
  homepage "https://claudevps.com"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Achronon/cvps/releases/download/v#{version}/cvps-darwin-arm64"
      sha256 "bfd65d52f5c6ab71ded254bbef93de4e8a9abf813be94a9ecebf9798043cc005"

      def install
        bin.install "cvps-darwin-arm64" => "cvps"
      end
    else
      url "https://github.com/Achronon/cvps/releases/download/v#{version}/cvps-darwin-amd64"
      sha256 "42351a3108caa8167b276d3329456adce0b89229348dd4405fe94170745f6aae"

      def install
        bin.install "cvps-darwin-amd64" => "cvps"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Achronon/cvps/releases/download/v#{version}/cvps-linux-arm64"
      sha256 "20f5689c26dafee72cdb07faac10f217502e2b162ec1bd55e1caddb79c8fd4ba"

      def install
        bin.install "cvps-linux-arm64" => "cvps"
      end
    else
      url "https://github.com/Achronon/cvps/releases/download/v#{version}/cvps-linux-amd64"
      sha256 "527388bce14c0a0d31c8c6c2c3233156c3ddca7c5b1947dbc8a7596901962e75"

      def install
        bin.install "cvps-linux-amd64" => "cvps"
      end
    end
  end

  test do
    assert_match "cvps version", shell_output("#{bin}/cvps version")
  end
end
