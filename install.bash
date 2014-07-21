#!/usr/bin/env bash
 
# First, retrieve the zip file from Github.
# It will use wget or curl
curl_available=$(command -v curl)
wget_available=$(command -v wget)
unzip_available=$(command -v unzip)

dotfiles_zip=/tmp/dotfiles-master.zip
dotfiles_dir=/tmp/dotfiles-master
dotfiles_url=https://github.com/thiagoneves/dotfiles/archive/master.zip
user_file="/tmp/user_${RANDOM}.sh"

if [[ "$unzip_available" = "" ]]; then
  exit_with_message "#=> Make sure you have the unzip command available"
fi

echo "#=> Downloading $dotfiles_url to $dotfiles_zip"

if [[ "$curl_available" != "" ]]; then
  curl -Ls -o $dotfiles_zip $dotfiles_url
elif [[ "$wget_available" != "" ]]; then
  wget -q -O $dotfiles_zip $dotfiles_url
else
  echo "#=> Please make sure curl or wget is installed"
  exit 1
fi

# Now, unzip the directory and
rm -rf $dotfiles_dir
unzip -q $dotfiles_zip -d /tmp

# Copy files
find ${dotfiles_dir}/files -maxdepth 1 -mindepth 1 -exec cp -R "{}" $HOME/ \;
 
# Clone vundle.
if [[ ! -d "$HOME/.vim/bundle/vundle" ]]; then
  echo "#=> Cloning vim's vundle plugin"
  git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle &> /dev/null
fi

# Source the initalization file.
. $HOME/.bash/init.sh

echo "#=> Done!"