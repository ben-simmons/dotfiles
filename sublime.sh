# https://github.com/CoreyMSchafer/dotfiles/blob/master/sublime.sh

# Create Sublime Text directories as they don't exist until Sublime is opened
mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

# Install Custom Sublime Text settings
cp -r settings/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings