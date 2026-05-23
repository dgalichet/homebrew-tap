class ObsidianKb < Formula
  desc "Local-first hybrid retrieval CLI for Obsidian vaults"
  homepage "https://github.com/dgalichet/obsidian-kb"
  version "0.5.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dgalichet/obsidian-kb/releases/download/v0.5.1/obsidian-kb-aarch64-apple-darwin.tar.gz"
      sha256 "7bd4cb04f017b232301e5b0b3f1e97e3cf4f88188bd61ff0a1b7a7b8b1058b1a"
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
