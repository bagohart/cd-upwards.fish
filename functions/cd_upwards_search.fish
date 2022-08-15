function cd_upwards_search --description 'Switches to the lowest directory which is upwards of current directory and matches the argument' --argument text
	if test (count $argv) = 0
        echo "No arguments passed, do nothing."
        return 1
    end

    if string match --quiet --entire --regex / $text
        echo "Argument $text contains '/', abort."
        return 1
    end
    set new_dir (path dirname (pwd))
    if not string match --quiet --entire $text $new_dir
        echo "The path above ($new_dir) doesn't contain $text, do nothing."
        return 1
    end

    # this can't fail because the last 2 checks guarantee that it will be found
    while not string match --quiet --entire $text (path basename $new_dir)
        set new_dir (path dirname $new_dir)
    end

    cd -- $new_dir
end
