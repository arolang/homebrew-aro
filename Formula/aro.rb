class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/v0.2.0-beta.8/aro-macos-arm64.tar.gz"
  sha256 "55c474e39b3ad8ae5a31a9208420ec01628801769ceff3146f24af6b0c89f92c"
  version "0.2.0-beta.8"
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
