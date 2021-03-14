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

## MULTIPLE REMOTES

copied from a [blog](https://jigarius.com/blog/multiple-git-remote-repositories).

```
# Create a new remote called "all" with the URL of the primary repo.
git remote add all git@github.com:jigarius/toggl2redmine.git

# Re-register the remote as a push URL.
git remote set-url --add --push all git@github.com:jigarius/toggl2redmine.git

# Add a push URL to a remote. This means that "git push" will also push to this git URL.
git remote set-url --add --push all git@bitbucket.org:jigarius/toggl2redmine.git

# push to all:
git push all
```

# JUPYTER

jupyter lab --no-browser --port 8889
