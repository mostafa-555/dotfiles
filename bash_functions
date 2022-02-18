internet() {
    ping -q 1.1.1.1 -c 3 -w 3 &> /dev/null && echo "yup." || ( echo "nah." ; exit 1 ) 
}

update_repos() {
    local currentdir=`pwd`
    clear
    for repo in $HOME/{dotfiles,Scripts,github/qutebrowser}; do { 
        cd $repo;
        echo -e "### $repo ###\n";
        git add . ;
        if git commit -a -m "updating..."; then
            git push; 
        fi
        echo -e "------------------------------------------------\n";
    } 
done
cd $currentdir
}
