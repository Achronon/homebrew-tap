class Cvps < Formula
  desc "ClaudeVPS CLI - Manage remote development sandboxes"
  homepage "https://claudevps.com"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Achronon/cvps/releases/download/v#{version}/cvps-darwin-arm64"
      sha256 "7655f38620376c4e7e592271a42a58286483f31b58479d6d5d3b8d67910d2fc6"

      def install
        bin.install "cvps-darwin-arm64" => "cvps"
      end
    else
      url "https://github.com/Achronon/cvps/releases/download/v#{version}/cvps-darwin-amd64"
      sha256 "1451c10f4fdb0a8ae17e684154ff8ab50152a33add437f47b6c5962a81876da2"

      def install
        bin.install "cvps-darwin-amd64" => "cvps"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Achronon/cvps/releases/download/v#{version}/cvps-linux-arm64"
      sha256 "2e4b6701a737d6e55b446fb08caa5c11e7d3958d3b74e2a7ae710df8cdc26340"

      def install
        bin.install "cvps-linux-arm64" => "cvps"
      end
    else
      url "https://github.com/Achronon/cvps/releases/download/v#{version}/cvps-linux-amd64"
      sha256 "f0e94199e3ae5ac582215920c106c88bdda2d5ca403ee15e2fb3ddb4d2f9e3e4"

      def install
        bin.install "cvps-linux-amd64" => "cvps"
      end
    end
  end

  test do
    assert_match "cvps version", shell_output("#{bin}/cvps version")
  end
end
