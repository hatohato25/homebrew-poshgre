class Poshgre < Formula
  desc "A TUI PostgreSQL client for fast database exploration with fuzzy search"
  homepage "https://hatohato25.github.io/poshgre/"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hatohato25/poshgre/releases/download/v#{version}/posh-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4058209de8b740cb044b0efe3ee56cee72041ce68617e785d14c6dc3539d2a94"
    end

    on_intel do
      url "https://github.com/hatohato25/poshgre/releases/download/v#{version}/posh-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "4058209de8b740cb044b0efe3ee56cee72041ce68617e785d14c6dc3539d2a94"
    end
  end

  def install
    bin.install "posh"
  end

  test do
    system "#{bin}/posh", "--version"
  end
end