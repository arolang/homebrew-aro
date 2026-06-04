cask "solaro" do
  # Pin to the latest aro release that publishes
  # `solaro-macos-arm64.dmg`. The CI workflow
  # (.github/workflows/build.yml in arolang/aro) attaches that file
  # to every tagged release; older tags pre-date the SOLARO build
  # step and won't resolve.
  version "0.10.6"
  # TODO: replace with the real shasum once a release with the
  # solaro DMG is published — `shasum -a 256 solaro-macos-arm64.dmg`.
  # `:no_check` keeps `brew install solaro` working in the meantime
  # so the install target exists for the docs.
  sha256 :no_check

  url "https://github.com/arolang/aro/releases/download/#{version}/solaro-macos-arm64.dmg"
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
