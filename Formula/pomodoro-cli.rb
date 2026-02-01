class PomodoroCli < Formula
  desc "CLI-based Pomodoro timer written in Go"
  homepage "https://github.com/fumiyanokesinn/pomodoro-cli"
  url "https://github.com/fumiyanokesinn/pomodoro-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9ce03d775f2ab55ccc07abcfa320edc6090a7163b628ef6e15a8299fb3b834e0"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/pomodoro"
  end

  test do
    assert_match "pomodoro version #{version}", shell_output("#{bin}/pomodoro-cli --version")
  end
end
