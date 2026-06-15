class Poshgre < Formula
  desc "A TUI PostgreSQL client for fast database exploration with fuzzy search"
  homepage "https://hatohato25.github.io/poshgre/"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hatohato25/poshgre/releases/download/v#{version}/posh-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end

    on_intel do
      url "https://github.com/hatohato25/poshgre/releases/download/v#{version}/posh-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "posh"
  end

  test do
    system "#{bin}/posh", "--version"
  end
end