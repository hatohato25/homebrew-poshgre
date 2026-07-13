class Poshgre < Formula
  desc "A TUI PostgreSQL client for fast database exploration with fuzzy search"
  homepage "https://hatohato25.github.io/poshgre/"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hatohato25/poshgre/releases/download/v#{version}/posh-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "062db169f77a2b297d7d0f3cbfdfb53b1ac9100c18f96b438a86ddd0870d98a7"
    end

    on_intel do
      url "https://github.com/hatohato25/poshgre/releases/download/v#{version}/posh-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "062db169f77a2b297d7d0f3cbfdfb53b1ac9100c18f96b438a86ddd0870d98a7"
    end
  end

  def install
    bin.install "posh"
  end

  test do
    system "#{bin}/posh", "--version"
  end
end