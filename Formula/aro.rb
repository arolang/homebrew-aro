class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/0.10.3/aro-macos-arm64.tar.gz"
  sha256 "9bec29f81eae8705fd42fea738a4a5be37cf00fa009d080f350db3870a277e12"
  version "0.10.3"
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
