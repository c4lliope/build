function base
  set name $argv[1]

  git clone https://github.com/graysonwright/base.git tweetrep
  and cd tweetrep
  and rm -rf .git
  and git init
  and git add .
  and git commit -m "[init] Create `$name` from `graysonwright/base`"
end
