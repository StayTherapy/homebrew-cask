# A PATCH verion 'Squirrel' 0.14.0+git118aee6
# Solved:
#   'alternative_select_labels' not working (as far as I know)
# Issues:
#   https://github.com/rime/squirrel/issues/453
# Reference:
# Release https://github.com/Homebrew/homebrew-cask/blob/master/Casks/squirrel.rb
# Author: staylet

cask "squirrel-beta" do
  version "0.14.0.118aee6"
  sha256 "1fc7058f9db4283becb53c9d5ab3998d872059c23e21c0d7bfe25bcd871f1ba9"

  url "https://bintray.com/rime/squirrel/download_file?file_path=Squirrel-0.14.0%2Bgit118aee6.zip"
  appcast "https://rime.im/release/squirrel/appcast.xml"
  name "Squirrel"
  homepage "https://rime.im/"
  
  # Conflicts with official release version.
  conflicts_with cask: "squirrel"

  auto_updates true

  pkg "Squirrel.pkg"

  uninstall pkgutil: [
    "im.rime.inputmethod.Squirrel",
    "com.googlecode.rimeime.Squirrel.pkg", # Package name of older versions (< 0.10.0)
  ],
            delete:  "/Library/Input Methods/Squirrel.app"

  zap trash: [
    "~/Library/Caches/im.rime.inputmethod.Squirrel",
    "~/Library/Preferences/im.rime.inputmethod.Squirrel.plist",
    # Data for older versions (< 0.10.0)
    "~/Library/Caches/com.googlecode.rimeime.inputmethod.Squirrel",
    "~/Library/Preferences/com.googlecode.rimeime.inputmethod.Squirrel.plist",
  ]
end
