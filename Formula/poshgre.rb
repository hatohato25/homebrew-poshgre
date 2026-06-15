class Poshgre < Formula
  desc "A TUI PostgreSQL client for fast database exploration with fuzzy search"
  homepage "https://hatohato25.github.io/poshgre/"
  version "0.1.0"
  license "MIT"

  on_macos do
    957fd867545b1851526c88c4d70f6bb0414672e893c6f1af98eb2e32f6c0d494"
    end

    kbfe6b5ac260cf1cfea210d237c466cf5e074c75928ce28f54103b5497b8917"
    end
  end

  def install
    bin.install "posh"
  end

  test do
    system "#{bin}/posh", "--version"
  end
end
