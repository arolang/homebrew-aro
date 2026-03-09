class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/0.6.3-beta.20/aro-macos-arm64.tar.gz"
  sha256 "c9ebb7a58272ad0a0cc5d3799faf973040bd9457610ba6ad78b8a6da0e999e66"
  version "0.6.3-beta.20"
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
