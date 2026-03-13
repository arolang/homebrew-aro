class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/0.7.0-beta.23/aro-macos-arm64.tar.gz"
  sha256 "c7414506baa4713fd875028e8d8f35f0fd176432924f4a5ccf4ecbbe81caa8c7"
  version "0.7.0-beta.23"
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
