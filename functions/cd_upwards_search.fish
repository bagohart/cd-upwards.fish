function cd_upwards_search --description 'Switches to the lowest directory which is upwards of current directory and matches the argument' --argument s
    if test (count $argv) = 0
        echo "No arguments passed, do nothing."
        return 1
    end

    if string match --quiet --entire --regex / $s
        echo "Argument $s contains '/', abort."
        return 1
    end
    set new_dir (path dirname (pwd))
    if not string match --quiet --entire $s $new_dir
        echo "The path above ($new_dir) doesn't contain $s, do nothing."
        return 1
    end

    # this can't fail because the last 2 checks guarantee that it will be found
    while not string match --quiet --entire $s (path basename $new_dir)
        set new_dir (path dirname $new_dir)
    end

    cd -- $new_dir
end
