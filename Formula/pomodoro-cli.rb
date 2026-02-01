class PomodoroCli < Formula
  desc "CLI-based Pomodoro timer written in Go"
  homepage "https://github.com/fumiyanokesinn/pomodoro-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/fumiyanokesinn/pomodoro-cli/releases/download/v0.1.0/pomodoro-cli-v0.1.0-darwin-amd64.tar.gz"
      sha256 "811ee7a0c726769a9c1c5aa7321514a594b6045ee4f2dd181a10c3636970c9d4"
    end

    on_arm do
      url "https://github.com/fumiyanokesinn/pomodoro-cli/releases/download/v0.1.0/pomodoro-cli-v0.1.0-darwin-arm64.tar.gz"
      sha256 "48f8bdcd2abaf39a1dbfd6dd2049d51885792afc430bb96793bdfe74dc22862f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/fumiyanokesinn/pomodoro-cli/releases/download/v0.1.0/pomodoro-cli-v0.1.0-linux-amd64.tar.gz"
      sha256 "5afd53777a6ba8faeea8994aab742db2a82fbb26b570dfeb6280a268dd9bf165"
    end

    on_arm do
      url "https://github.com/fumiyanokesinn/pomodoro-cli/releases/download/v0.1.0/pomodoro-cli-v0.1.0-linux-arm64.tar.gz"
      sha256 "ce5b2a9a31bddef1ed18bcc29948aff413cc7d374fa806e297ed7360bfae4e3b"
    end
  end

  def install
    bin.install "pomodoro-cli"
  end

  test do
    assert_match "pomodoro version #{version}", shell_output("#{bin}/pomodoro-cli --version")
  end
end
