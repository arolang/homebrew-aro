cask "solaro" do
  # Managed by the release workflow in arolang/aro
  # (.github/workflows/build.yml, "Update Homebrew Cask"). Edit
  # there, not here — this file is overwritten on every release
  # that ships solaro-macos-arm64.dmg.
  version "0.11.0"
  sha256 "c236a907de3e19911ea7dbff81c224dab081c79558b2383452a1f47059651f73"

  url "https://github.com/arolang/aro/releases/download/0.11.0/solaro-macos-arm64.dmg"
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
