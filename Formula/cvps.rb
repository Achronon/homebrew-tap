class Cvps < Formula
  desc "ClaudeVPS CLI - Manage remote development sandboxes"
  homepage "https://claudevps.com"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Achronon/cvps/releases/download/v#{version}/cvps-darwin-arm64"
      sha256 "7adf10cdcd5cef048745dc7f68898f5528a2cf202fe17b04f832b3261677286d"

      def install
        bin.install "cvps-darwin-arm64" => "cvps"
      end
    else
      url "https://github.com/Achronon/cvps/releases/download/v#{version}/cvps-darwin-amd64"
      sha256 "5919f1efd7c37323da5fc89b9c0167af5b81340e0ef0ffe597f3740769a0830a"

      def install
        bin.install "cvps-darwin-amd64" => "cvps"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Achronon/cvps/releases/download/v#{version}/cvps-linux-arm64"
      sha256 "28543fd2ccf4a121765a5039c5cb648db9ba4ce5e7bd0cf057e46ccc0e5677b0"

      def install
        bin.install "cvps-linux-arm64" => "cvps"
      end
    else
      url "https://github.com/Achronon/cvps/releases/download/v#{version}/cvps-linux-amd64"
      sha256 "54291d8b0003eaa030360ccc3b71cb73c6bf86306316e1c0e1055ea4caae7326"

      def install
        bin.install "cvps-linux-amd64" => "cvps"
      end
    end
  end

  test do
    assert_match "cvps version", shell_output("#{bin}/cvps version")
  end
end
