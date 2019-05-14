echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Clear Public folder
cd public
git checkout master
git pull
git rm -r .
cd ..

# Build the project. if using a theme, replace with `hugo -t <YOURTHEME>`
hugo -b https://d0sl.github.io/npo/

# Go To Public folder
cd public
# Add changes to git.
git add .

# Commit changes.
git commit -m "Rebuilding doc-site"

# Push source and build repos.
git push origin master

# Come Back up to the Project Root
cd ..