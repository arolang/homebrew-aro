class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/0.5.3-beta.16/aro-macos-arm64.tar.gz"
  sha256 "f37c5bdd1a871cc691bd00ba77a96a7449d79416b323d4abab3e85ef052db574"
  version "0.5.3-beta.16"
  license "MIT"

  # Only support macOS for now (ARM64 binary)
  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "aro"
    lib.install "libARORuntime.a"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aro --version")
  end
end
