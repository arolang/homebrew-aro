class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/0.6.0-beta.17/aro-macos-arm64.tar.gz"
  sha256 "1f5a3643a43e30fc21bb4b6f9413dfd4cf122205a60b1aa38e198ec9016a7234"
  version "0.6.0-beta.17"
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
