function alias --description 'Define global alias'
    set FILENAME ~/.config/fish/functions/$argv[1].fish
    echo "function $argv[1] --description 'Automatically created alias'" > $FILENAME
    echo "    $argv[2] \$argv" >> $FILENAME
    echo "end" >> $FILENAME
    source $FILENAME
end
