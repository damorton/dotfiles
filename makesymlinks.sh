#!bin/bash

dir=~/dotfiles
olddir=~/dotfiles_old
files="bash_profile vimrc"

echo "Creating $olddir for backup of existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

echo "Changing to the $dir directory"
cd $dir
echo "...done"

for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old
    echo "Creating symlinks to $file in home directory."
    ln -s $dir/$file ~/.$file
done

