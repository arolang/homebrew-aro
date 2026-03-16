class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/0.7.2-beta.25/aro-macos-arm64.tar.gz"
  sha256 "80c56b5d58991057184859290c10850aa5213fb47bfae91d98f70d5b3aae56c1"
  version "0.7.2-beta.25"
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
