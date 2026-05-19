class ObsidianKb < Formula
  desc "Local-first hybrid retrieval CLI for Obsidian vaults"
  homepage "https://github.com/dgalichet/obsidian-kb"
  version "0.4.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dgalichet/obsidian-kb/releases/download/v0.4.1/obsidian-kb-aarch64-apple-darwin.tar.gz"
      sha256 "69d479aa31165adfe3f8238c53acb4091c5246a954fbd63ef7ba278995842d81"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"obsidian-kb"
  end

  test do
    assert_match "Local-first hybrid retrieval", shell_output("#{bin}/obsidian-kb --help")
  end
end
