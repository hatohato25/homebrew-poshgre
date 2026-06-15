class Poshgre < Formula
  desc "A TUI PostgreSQL client for fast database exploration with fuzzy search"
  homepage "https://hatohato25.github.io/poshgre/"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hatohato25/poshgre/releases/download/v#{version}/posh-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "269bf8dcc7acb7d8578d7a5ea1aa65406740fb410dfea88ff6ef036fee98b5e6"
    end

    on_intel do
      url "https://github.com/hatohato25/poshgre/releases/download/v#{version}/posh-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "269bf8dcc7acb7d8578d7a5ea1aa65406740fb410dfea88ff6ef036fee98b5e6"
    end
  end

  def install
    bin.install "posh"
  end

  test do
    system "#{bin}/posh", "--version"
  end
end