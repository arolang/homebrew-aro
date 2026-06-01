class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/4.StaticFiles/aro-macos-arm64.tar.gz"
  sha256 "1c92be629a462b1f3e5d5135e635d60762dcacb158864ccb95e1443a88f8accb"
  version "4.StaticFiles"
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
