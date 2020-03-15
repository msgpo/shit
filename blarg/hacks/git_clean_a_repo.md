## cleaning an old git repo of old commits

where `$1` is the commit hash where you want the new root to be

```
#!/bin/sh
git checkout --orphan temp $1 # create new branch that we will make the new master
git commit -m "Truncated history" # this will be the first commit of the cleaned branch
git rebase --onto temp $1 master # rebase the portion of master we wish to keep
git branch -D temp # delete temp branch
git prune --progress # delete all the objects w/o references
git gc --aggressive # garbage collect
```
