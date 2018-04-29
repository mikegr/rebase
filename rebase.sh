git config --global user.email "mikegr@gmx.net"
git config --global user.name "Michael Greifeneder"
rm -fR rebase-test

#init
mkdir rebase-test
cd rebase-test
git init
echo "content initialy" > init.txt
git add init.txt
git commit -a -m "initial commit"
# add on epic
git checkout -b epic
echo "on epic" >> epic.txt
git add epic.txt
git commit -a -m "on epic"
# add on feature
git checkout -b feature
echo "on feature" >> feature.txt
git add feature.txt
git commit -a -m "on feature"
# add on master
git checkout master 
echo "on master" >> master.txt
git add master.txt
git commit -a -m "on master"

# rebase of epic
git checkout epic
git rebase master
# rebase of feature
git checkout feature
git rebase epic
gitk --all &


