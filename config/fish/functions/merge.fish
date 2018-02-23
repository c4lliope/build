function merge
  set branch (git symbolic-ref HEAD --short)
  echo "Merging branch `$branch`"

  and verbose git fetch
  and verbose git checkout $branch
  and verbose git rebase -i origin/master
  and verbose git push --force-with-lease
  and verbose git checkout master
  and verbose git pull
  and verbose git merge --ff-only $branch
  and verbose git push
  and verbose git branch -d $branch
  and verbose git push --force-with-lease origin :$branch
end
