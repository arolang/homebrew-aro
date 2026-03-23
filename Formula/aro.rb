class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/0.7.4-beta.29/aro-macos-arm64.tar.gz"
  sha256 "7a018d9687764edcd508f59399fb1d12a6714187c6b474028f2b057433378030"
  version "0.7.4-beta.29"
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
