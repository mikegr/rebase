git config --global user.email "mikegr@gmx.net"
git config --global user.name "Michael Greifeneder"
rm -fR rebase-conflict

#init
mkdir rebase-conflict
cd rebase-conflict
git init
echo "content initialy" > file.txt
git add .
git commit -a -m "initial commit"
# add on epic
git checkout -b epic
echo "on epic" >> file.txt
echo "on epic" >> epic.txt
git add .
git commit -a -m "on epic"

# add on feature
git checkout -b feature
echo "on feature" >> file.txt
echo "on feature" >> feature.txt
git add .
git commit -a -m "on feature"

# add on epic after feature
git checkout epic
echo "on epic afterwards" >> file.txt
echo "on epic afterwards" >> epic2.txt
git add .
git commit -a -m "on epic afterwards"

# add on master
git checkout master 
echo "on master" >> file.txt
echo "on master" >> master.txt
git add . 
git commit -a -m "on master"

# rebase of epic
git checkout epic
git branch epic-before-rebase
#git rebase master -Xtheirs

# rebase of feature
#git checkout feature
#git branch feature-before-rebase
#git rebase epic -Xtheirs

#gitk --all &


