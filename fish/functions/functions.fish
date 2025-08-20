# adds abbrs to '~/.config/fish/conf.d/abbrs.fish'
function abbr-add
    abbr --add $argv
    echo "abbr -a" $argv >>~/.config/fish/conf.d/abbrs.fish
end

# erases abbrs from '~/.config/fish/conf.d/abbrs.fish'
function abbr-erase --argument abbr
    abbr --erase $abbr
    abbr >"$HOME/.config/fish/conf.d/abbrs.fish"
end

# mkdir-cd 
function x --argument dir
    mkdir -p -- $dir
    and cd -- $dir
end

# backup
function backup --argument filename
    cp $filename $filename.bak
end

# super cp
function cp
    set count (count $argv | tr -d \n)
    if test "$count" = 2; and test -d "$argv[1]"
        set from (echo $argv[1] | trim-right /)
        set to (echo $argv[2])
        mkdir -p (basename $to)
        command cp -i -r $from $to
    else
        command cp -i $argv
    end
end

# create - file 
function mkf --argument target
    mkdir -p (dirname $target)
    touch $target
end

# < eat 
function eat --argument dir
    set files_to_move (find $dir -maxdepth 1 -not -path $dir)

    for f in $files_to_move
        set filename (echo $f | string replace $dir '' | trim-left /)
        if file-exists ./$filename
            echo "eat: file would be overwritten: ./$filename"
            return 1
        end
    end

    set target (dirname $dir)

    for f in $files_to_move
        mv $f $target
    end

    rmdir $dir
end

# move >>
function mv
    set from $argv[1]
    if is-symlink $from; and string match --quiet --regex --entire '/$' $from
        echo move: `from` argument '"'$from'"' is a symlink with a trailing slash.
        echo move: to rename a symlink, remove the trailing slash from the argument.
        return 1
    end
    mv -i $argv
end
##################################       ONLY  WORKS  WITH  NEOVIM       ###########################################
# fzf-rm
function frm
    set file $(fzf)
    rm -rf $file
    echo "$file removed!"
end

# fzf-cp
function fcp
    set ftcp $(fzf)
    nvim ~/dir.txt
    set dircp '~/dir.txt'
    cp $ftcp $dircp
    echo "$ftcp copied to $dircp!"
    rm -rf ~/dir.txt
end

# fzf-mv 
function fmv
    set ftmv $(fzf)
    nvim ~/mv.txt
    set dirmv '~/mv.txt'
    mv $ftmv $dirmv
    echo "$ftmv moved to $dirmv"
    rm -rf ~/mv.txt
end
