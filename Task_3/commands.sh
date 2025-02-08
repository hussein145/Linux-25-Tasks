mkdir git_started
cd git_started
touch hello.txt
nano hello.txt
# Hello OSC Community
# Sorry for being Late
mkdir .git/{objects,refs/heads} -p
touch .git/HEAD
# Make Head in a branch
# write in Head
# ref: refs/heads/master
git hash-object hello.txt -w
git update-index --add --cacheinfo 100644 c50be0ed4873da2a9484293e1e9599ffa15e5f6f hello.txt
git write-tree
git commit-tree 6259f45be0ba988af50ad150bf78d4b7daab8443 -m "init"
echo "511ba7d800a0d9d1cd37f88d186affbc53ae0154" > .git/refs/heads/master
mkdir .git/refs/tags
echo "511ba7d800a0d9d1cd37f88d186affbc53ae0154" > .git/refs/tags/V1
#git log
#git status
