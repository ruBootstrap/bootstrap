docs="_gh_pages_4"
site="v4.getbootstrap.su"
url="https://github.com/ruBootstrap/rubootstrap.git"
branch="master"

echo "Deleting old publication"
rm -rf $docs
git submodule add -b $branch $url $docs

echo "Generating site"
hugo

read -p "Enter message for commit: " answer

if [[ $answer ]]
then
message=$answer
else
message="Update docs"
fi

cd $docs && git add --all && git commit -m "$message" && git push origin $branch && cd ..

#echo "Pushing to github"
#git push --all
