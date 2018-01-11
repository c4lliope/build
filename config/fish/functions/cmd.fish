function cmd
  dev
    set file config/fish/functions/$argv[1].fish

    if test -e $file
      echo "$file exists. Opening for edits..."
    else
      echo "$file does not exist. Creating..."
      alias $argv[1]='ls'
      funcsave $argv[1]
    end

    vi $file

    test -e $file
    and source $file
    and g a $file
    and g c $file
  cd -
end
