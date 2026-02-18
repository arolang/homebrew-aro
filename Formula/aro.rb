class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/0.4.0-beta.12/aro-macos-arm64.tar.gz"
  sha256 "646cdf14ec00f068eb59f42b40ea32d2ec173c79be7f597da595e4b4840c8f22"
  version "0.4.0-beta.12"
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
