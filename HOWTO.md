# GIT


## NEW REPO
su gituser
cd /var/www/git
mkdir $repo
cd $repo
git init --bare

## GIT CLONE

git clone ssh://gituser@mullanptr.xyz:10022/var/www/git/$repo.git

# JUPYTER

jupyter lab --no-browser --port 8889
