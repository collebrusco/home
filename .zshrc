
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/frankcollebrusco/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/frankcollebrusco/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/frankcollebrusco/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/frankcollebrusco/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<



#export PINTOS=/Users/frankcollebrusco/UT/461s/pintos-fall-2024-frank-and-rocco
#export PATH=/Users/frankcollebrusco/opt/anaconda3/bin:/Library/Frameworks/Python.framework/Versions/#3.11/bin:/Applications/Sublime Text.app/Contents/SharedSupport/bin:/Applications/Sublime Text.app/#Contents/SharedSupport/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/#sbin:/sbin:~/dev/lib:/Library/TeX/texbin:/Library/Apple/usr/bin:/utils


git-touch() {
    touch $1 && git add $1
}

git-blank-gitignore() {
    echo "**/*.DS_Store\n*.o\nbuild\nign\n" > .gitignore && git add .gitignore
}

git-frank-init() {
    git init
    git-blank-gitignore
    git-touch README.md
    open "https://github.com/new"
}

