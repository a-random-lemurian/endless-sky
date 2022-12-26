echo 'Endless Sky is being updated'
git switch master
git fetch upstream
git rebase upstream/master
git switch lem-fork
git merge master
git push origin master
git push origin lem-fork
cmake --build --preset linux-debug
cmake --build --preset linux-release
