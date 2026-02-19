class Cvps < Formula
  desc "ClaudeVPS CLI - Manage remote development sandboxes"
  homepage "https://claudevps.com"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Achronon/cvps/releases/download/v#{version}/cvps-darwin-arm64"
      sha256 "fa66792288ef2bfee346f6d1806b69a16192b7052a7bb2161a982f29ea6a98a9"

      def install
        bin.install "cvps-darwin-arm64" => "cvps"
      end
    else
      url "https://github.com/Achronon/cvps/releases/download/v#{version}/cvps-darwin-amd64"
      sha256 "64c8dc56a86a1fdf34bb076d8b3c16733fed0ff4c522b2a59e463cc741002d44"

      def install
        bin.install "cvps-darwin-amd64" => "cvps"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Achronon/cvps/releases/download/v#{version}/cvps-linux-arm64"
      sha256 "9fd48fb3bd8b4a7fbf6882daf7a1d6b36193ca21fd31997aec80da20cdb42786"

      def install
        bin.install "cvps-linux-arm64" => "cvps"
      end
    else
      url "https://github.com/Achronon/cvps/releases/download/v#{version}/cvps-linux-amd64"
      sha256 "4aee25e0eaee255a7d5dee0395e8b477f57d21b415c6a97a20984d634d11d755"

      def install
        bin.install "cvps-linux-amd64" => "cvps"
      end
    end
  end

  test do
    assert_match "cvps version", shell_output("#{bin}/cvps version")
  end
end
