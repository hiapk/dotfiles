# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !
#export TERM=konsole
#echo "Did you know that:"$(ls /bin | shuf -n 1)
export TERM=xterm-256color
#export CROSS_COMPILE=/home/liu/Kernel/olympus/linaro/bin/arm-unknown-linux-gnueabi-
#export CATALINA_HOME=/home/liu/tomcat7
export PATH=/home/liu/Decompiler/jdcore/:/home/liu/adteclipse/sdk/tools/:/opt/compare/bin:$PATH
export CLASSPATH=.:~/.vim:$CLASSPATH
# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
    # Shell is non-interactive.  Be done now!
    return
fi

source ~/dotfiles/git-completion.bash
# Put your fun stuff here.
source ~/dotfiles/alias

bind 'set completion-ignore-case on'
# do not show hidden files in the list
bind 'set match-hidden-files on'
bind 'set show-all-if-ambiguous on'


tdown()
{
    echo $1 | sed 's/thunder:\/\///g' | base64 -d | sed -r 's/^AA(.*)ZZ$/\1\n/g'
}

youdao()
{
    python ~/program/shell/ydcv.py $1
}

jieya() {
    local c e i

    (($#)) || return

    for i; do
        c=''
        e=1

        if [[ ! -r $i ]]; then
            echo "$0: file is unreadable: \`$i'" >&2
            continue
        fi

        case $i in
            #*.t@(gz|lz|xz|b@(2|z?(2))|a@(z|r?(.@(Z|bz?(2)|gz|lzma|xz)))
               #c='bsdtar xvf';;
        *.tar.gz)  c='tar zxvf';;
        *.tar.xz)  c='tar zJvf';;
        *.7z)  c='7z x';;
        *.Z)   c='uncompress';;
        *.bz2) c='bunzip2';;
        *.exe) c='cabextract';;
        *.gz)  c='gunzip';;
        *.rar) c='unrar x';;
        *.xz)  c='unxz';;
        *.zip) c='unzip';;
        *)     echo "$0: unrecognized file extension: \`$i'" >&2
               continue;;
        esac

        command $c "$i"
        e=$?З
    done

    return $e
}
