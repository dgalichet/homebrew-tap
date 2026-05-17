class ObsidianKb < Formula
  desc "Local-first hybrid retrieval CLI for Obsidian vaults"
  homepage "https://github.com/dgalichet/obsidian-kb"
  version "0.3.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dgalichet/obsidian-kb/releases/download/v0.3.1/obsidian-kb-aarch64-apple-darwin.tar.gz"
      sha256 "f328be7cd7c7a3e2ba061907430106a80b7415e31587f8232a3bbf87ba245700"
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
