class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/0.9.1/aro-macos-arm64.tar.gz"
  sha256 "3f1d42ce71392f380a999b7800bd29eb651868ffc2a939e0e1c038d928b14621"
  version "0.9.1"
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
