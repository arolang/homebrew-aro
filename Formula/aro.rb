class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/0.7.3-beta.28/aro-macos-arm64.tar.gz"
  sha256 "e1af79169edfe0c2bc6b327198c83580f3a241c518fbba3ab093194dd72c5780"
  version "0.7.3-beta.28"
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
