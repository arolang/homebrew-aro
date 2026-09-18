class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/0.12.0/aro-macos-arm64.tar.gz"
  sha256 "32bb89ea1699317ecaa8ea587150724f7556b2fd449ab748853b14e889f2d4c5"
  version "0.12.0"
  license "MIT"

  # Only support macOS for now (ARM64 binary)
  depends_on :macos
  depends_on arch: :arm64
  depends_on "libgit2"
  depends_on "llvm@20"

  def install
    bin.install "aro"
    lib.install "libARORuntime.a"
    # Ship the MLX Metal shader library next to the binary so
    # `aro ask` can find it without an extra search path.
    (share/"aro").install "mlx.metallib"
    bin.install_symlink share/"aro/mlx.metallib"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aro --version")
  end
end
