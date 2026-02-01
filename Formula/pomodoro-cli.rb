class PomodoroCli < Formula
  desc "CLI-based Pomodoro timer written in Go"
  homepage "https://github.com/fumiyanokesinn/pomodoro-cli"
  url "https://github.com/fumiyanokesinn/pomodoro-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "dc8b2a8d25f46e1a81141457d47174b64be9e8414cdc8b4c2646914db2191c9f"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/pomodoro"
  end

  test do
    assert_match "pomodoro version #{version}", shell_output("#{bin}/pomodoro-cli --version")
  end
end
