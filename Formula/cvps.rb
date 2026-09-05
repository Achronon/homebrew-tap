class Cvps < Formula
  desc "ClaudeVPS CLI - Manage remote development sandboxes"
  homepage "https://claudevps.com"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Achronon/cvps/releases/download/v#{version}/cvps-darwin-arm64"
      sha256 "bce1208c1ff0b7498eba1076f79b95b83800855394ff5eac10d9a734ea9eb813"

      def install
        bin.install "cvps-darwin-arm64" => "cvps"
      end
    else
      url "https://github.com/Achronon/cvps/releases/download/v#{version}/cvps-darwin-amd64"
      sha256 "f3f18928ed04af7b13788ef20dddd0f52addc7911aca33fc440ad78f9b811684"

      def install
        bin.install "cvps-darwin-amd64" => "cvps"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Achronon/cvps/releases/download/v#{version}/cvps-linux-arm64"
      sha256 "eb4e1d3499aae2622032e3e506bdc046a2cb4fa9f98894fe61b5b12a0f29a6ef"

      def install
        bin.install "cvps-linux-arm64" => "cvps"
      end
    else
      url "https://github.com/Achronon/cvps/releases/download/v#{version}/cvps-linux-amd64"
      sha256 "432530f54e3054513eaf73c823587c43fc99a71d246a48860fcbd6c0ac60d9c0"

      def install
        bin.install "cvps-linux-amd64" => "cvps"
      end
    end
  end

  test do
    assert_match "cvps version", shell_output("#{bin}/cvps version")
  end
end
