#!/bin/bash

# a script for linking the config files


#make a directoray for the old configs
mkdir -p ~/olddotfiles/config


#this will find the files "/home/user/file" and print the basename "file"
FILES=$(find . -maxdepth 1 | grep -v "\.$" | xargs -I FILE basename FILE)

for FILE in $FILES
do
    #you dont want to link these files ^_^
    [[ "$FILE" = "README.md" || "$FILE" = "install.sh" || "$FILE" = "config" || "$FILE" = ".git" ]] && continue
    FILE_PATH=$(realpath $FILE)
      # mv ~/.${FILE} ~/olddotfiles/${FILE} 2> /dev/null
    #if the file exist, then back it up to olddotfiles
    [[ ! -L ~/.${FILE} ]] && mv ~/.${FILE} ~/olddotfiles/${FILE} #if its not a link, then back it up.
    ln -s $FILE_PATH ~/.${FILE}
done

#the files in .config
cd config
FILES=$(find . -maxdepth 1 | xargs -I FILE basename FILE | grep -v "^\.") #its weired , i know.
for FILE in $FILES
do
    FILE_PATH=$(realpath $FILE)
    #mv ~/.config/${FILE} ~/olddotfiles/config/${FILE} 2> /dev/null
    [[ ! -L ~/.config/${FILE} ]] && mv ~/.config/${FILE} ~/olddotfiles/config #only back up if it's not a link.
    ln -s $FILE_PATH ~/.config
done

    
echo "all done"
    
