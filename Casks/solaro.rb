cask "solaro" do
  # Managed by the release workflow in arolang/aro
  # (.github/workflows/build.yml, "Update Homebrew Cask"). Edit
  # there, not here — this file is overwritten on every release
  # that ships solaro-macos-arm64.dmg.
  version "0.11.6"
  sha256 "0d1f6bda922a482aec0ffa353c35235cd12a748501bab55a6d36b90d0edc17e6"

  url "https://github.com/arolang/aro/releases/download/0.11.6/solaro-macos-arm64.dmg"
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
