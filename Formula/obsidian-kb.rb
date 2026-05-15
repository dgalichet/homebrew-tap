class ObsidianKb < Formula
  desc "Local-first hybrid retrieval CLI for Obsidian vaults"
  homepage "https://github.com/dgalichet/obsidian-kb"
  version "0.1.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dgalichet/obsidian-kb/releases/download/v0.1.1/obsidian-kb-aarch64-apple-darwin.tar.gz"
      sha256 "4c428ada2d7789c34b00678c89a3414ffecf1972de8c821fc8805b04c483e4d5"
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
