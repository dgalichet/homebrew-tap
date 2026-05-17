class ObsidianKb < Formula
  desc "Local-first hybrid retrieval CLI for Obsidian vaults"
  homepage "https://github.com/dgalichet/obsidian-kb"
  version "0.3.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dgalichet/obsidian-kb/releases/download/v0.3.0/obsidian-kb-aarch64-apple-darwin.tar.gz"
      sha256 "80777f15407dc007287ddd9649f66f36e78c1ad217d8eeabc13b84e0b1764dc0"
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
