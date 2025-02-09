rm -f *.osk
git add .
read -p "Enter Commit Message: " commit
git commit -m "$commit"
zip -r "V$(cat version.txt) ($(git rev-parse --short HEAD))".osk src
