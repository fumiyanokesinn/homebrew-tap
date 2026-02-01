class Pomodoro < Formula
  desc "CLI-based Pomodoro timer written in Go"
  homepage "https://github.com/fumiyanokesinn/pomodoro-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/fumiyanokesinn/pomodoro-cli/releases/download/v0.2.0/pomodoro-v0.2.0-darwin-amd64.tar.gz"
      sha256 "921e6f08cd3c66e87eb36172296a25e88cbae7e90e345946b2b4df25e3f86fdd"
    end

    on_arm do
      url "https://github.com/fumiyanokesinn/pomodoro-cli/releases/download/v0.2.0/pomodoro-v0.2.0-darwin-arm64.tar.gz"
      sha256 "11127d48ef3ccd636b219dc2798f4bef48242d931922912692074d008b8294e1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/fumiyanokesinn/pomodoro-cli/releases/download/v0.2.0/pomodoro-v0.2.0-linux-amd64.tar.gz"
      sha256 "d0d54f31e01e1b5360abab193687cfe6825fa78539ee6f96183b4694e4f5d369"
    end

    on_arm do
      url "https://github.com/fumiyanokesinn/pomodoro-cli/releases/download/v0.2.0/pomodoro-v0.2.0-linux-arm64.tar.gz"
      sha256 "5f484fcebb5c0bbc3bc3028ac727139f5add8d357242fc11ee9d74083416321e"
    end
  end

  def install
    bin.install "pomodoro"
  end

  test do
    assert_match "pomodoro version #{version}", shell_output("#{bin}/pomodoro --version")
  end
end
