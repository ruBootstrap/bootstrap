mainBranch="main-ru"
ghPagesBranch="gh-pages"

echo "Start prepare"
echo "Checkout to $ghPagesBranch"
git checkout --orphan $ghPagesBranch
echo "Reset hard"
git reset --hard
echo "Initializing $ghPagesBranch branch"
git commit --allow-empty -m "Initializing $ghPagesBranch branch"
echo "Git push"
git push origin $ghPagesBranch
echo "Checkout to $mainBranch"
git checkout $mainBranch
