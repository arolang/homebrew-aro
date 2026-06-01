class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/5.BinaryMode/aro-macos-arm64.tar.gz"
  sha256 "be742e63d1d795d649d645cbdf54871cbf814e0d8d9d6f8eec1da889a025f69c"
  version "5.BinaryMode"
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
