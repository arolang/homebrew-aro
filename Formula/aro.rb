class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/0.3.0-beta.11/aro-macos-arm64.tar.gz"
  sha256 "855f214f8ad455d47ae4fe2e705bfcd03bb29e5e42504e8bfa1d7358e166a90d"
  version "0.3.0-beta.11"
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
