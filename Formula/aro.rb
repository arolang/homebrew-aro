class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/0.7.2-beta.27/aro-macos-arm64.tar.gz"
  sha256 "f4164061194fe889daa1943b4316af0f0760ffca1c67a589aee116bfc6f1f6b9"
  version "0.7.2-beta.27"
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
