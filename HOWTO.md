Commands I need often, and can't remember.
Not a full "Readme" explaining, everything -- rather a list of helpful commands.

# GIT - (own one)

How to set up and operate a git repo on your own machine/server

## NEW REPO
su gituser
cd /var/www/git
mkdir $repo
cd $repo
git init --bare

## GIT CLONE

git clone ssh://gituser@mullanptr.xyz:10022/var/www/git/$repo

# JUPYTER

jupyter lab --no-browser --port 8889
