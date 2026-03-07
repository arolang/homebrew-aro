class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/0.6.1-beta.18/aro-macos-arm64.tar.gz"
  sha256 "035584091689d48d2e1930701004bfd8cd142ff85e8afba538c0483ef2d3a498"
  version "0.6.1-beta.18"
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
