class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/0.9.3/aro-macos-arm64.tar.gz"
  sha256 "796f43e06e2f07439826be372966cb9ebf33c15a0112fc36e692ee6acfd0151c"
  version "0.9.3"
  license "MIT"

  # Only support macOS for now (ARM64 binary)
  depends_on :macos
  depends_on arch: :arm64
  depends_on "libgit2"
  depends_on "llvm@20"

  def install
    bin.install "aro"
    lib.install "libARORuntime.a"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aro --version")
  end
end
