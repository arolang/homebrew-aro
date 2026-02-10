class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/v0.2.2-beta.10/aro-macos-arm64.tar.gz"
  sha256 "1b322df00c629e7bd1c14f9b0fbcd133f9a47eb23514f96a43f24d8b9b916e0f"
  version "0.2.2-beta.10"
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
