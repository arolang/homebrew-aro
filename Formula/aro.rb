class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/0.5.1-beta.14/aro-macos-arm64.tar.gz"
  sha256 "58303d6c1c7b70b70e60c9424c11b55abdc3c7a0712e633a95115f2ca6a15446"
  version "0.5.1-beta.14"
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
