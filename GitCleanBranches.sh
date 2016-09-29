for remote in `git branch -r`; do git branch --track ${remote#origin/} $remote; done
git fetch --all
git branch --merged | egrep -v "(^\*|master|dev|develop|release)" | xargs git push origin --delete
# git branch --merged | egrep -v "(^\*|master|dev|develop|release)" | xargs git branch -d -r
git branch --merged | egrep -v "(^\*|master|dev|develop|release)" | xargs git branch -d
git fetch --all --prune
git gc
