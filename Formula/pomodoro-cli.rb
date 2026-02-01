class PomodoroCli < Formula
  desc "CLI-based Pomodoro timer written in Go"
  homepage "https://github.com/fumiyanokesinn/pomodoro-cli"
  url "https://github.com/fumiyanokesinn/pomodoro-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8e66cc80a690de9994395b1c15afc726753930fad729ea2ad4fd90d6f5f0ed9a"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/pomodoro"
  end

  test do
    assert_match "pomodoro version #{version}", shell_output("#{bin}/pomodoro-cli --version")
  end
end
