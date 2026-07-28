cask "solaro" do
  # Managed by the release workflow in arolang/aro
  # (.github/workflows/build.yml, "Update Homebrew Cask"). Edit
  # there, not here — this file is overwritten on every release
  # that ships solaro-macos-arm64.dmg.
  version "0.11.3"
  sha256 "4c1b0e429de9d3529ec486bd3154b1254be292c57f09a9f267fc7a90173f9e35"

  url "https://github.com/arolang/aro/releases/download/0.11.3/solaro-macos-arm64.dmg"
  name "Solaro"
  desc "Canvas-first IDE for the ARO language"
  homepage "https://github.com/arolang/aro"

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Solaro.app"

  # Clean up app-side state when the user runs `brew uninstall
  # --zap solaro`. CFBundleIdentifier is intentionally still
  # `com.arolang.SOLARO` (the rename to "Solaro" is cosmetic — we
  # keep the bundle ID stable so existing users' defaults survive),
  # which is also what the crash logger directory uses.
  zap trash: [
    "~/Library/Application Support/SOLARO",
    "~/Library/Caches/com.arolang.SOLARO",
    "~/Library/Logs/DiagnosticReports/SOLARO-*.ips",
    "~/Library/Preferences/com.arolang.SOLARO.plist",
  ]
end
