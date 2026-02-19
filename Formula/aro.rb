class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/0.5.0-beta.13/aro-macos-arm64.tar.gz"
  sha256 "a4d23a73f1bf4397348a342192c1a20159345124c0851e695540892bd82f7cfb"
  version "0.5.0-beta.13"
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
