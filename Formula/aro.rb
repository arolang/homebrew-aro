class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/0.5.2-beta.15/aro-macos-arm64.tar.gz"
  sha256 "680dd93185a1646ae1097bbb8605ae7787be1cbe5e9a2611d3bdcf69bcd729b5"
  version "0.5.2-beta.15"
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
