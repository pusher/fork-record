#!/bin/bash

echo "Owner of target repo: $1"
echo "Target Repo: $2"
echo "Owner of tracking repo: $3"
echo "Tracking repo: $4"
echo "Optional repo name suffix: $5"

OWNER_OF_TARGET_REPO=$1
TARGET_REPO=$2
OWNER_OF_TRACKING_REPO=$3
TRACKING_REPO=$4
NEW_PATH_SUFFIX=$5

if [ -z $NEW_PATH_SUFFIX ]
then
  NEW_FORK_NAME=$TARGET_REPO
else
  NEW_FORK_NAME="$TARGET_REPO-$NEW_PATH_SUFFIX"
fi
PATH_OF_REPO="https://github.com/$OWNER_OF_TARGET_REPO/$TARGET_REPO"
NEW_PATH_OF_REPO="git@github.com:$OWNER_OF_TRACKING_REPO/$NEW_FORK_NAME.git"

{
  gh repo fork "$OWNER_OF_TARGET_REPO/$TARGET_REPO" --org=$OWNER_OF_TRACKING_REPO --clone=false --remote-name=$NEW_FORK_NAME --fork-name=$NEW_FORK_NAME
  git clone git@github.com:$OWNER_OF_TRACKING_REPO/$TRACKING_REPO.git temp
  cd temp
  
  git submodule add $NEW_PATH_OF_REPO

  echo "Added git submodule"
  git commit -m "Forked $PATH_OF_REPO"
  git push
  
  cd ..
  rm -rf temp

  echo "All done. Cloned repo to https://github.com/$OWNER_OF_TRACKING_REPO/$NEW_FORK_NAME"
} || {
  echo "An error occurred. Please read error trace or ask a developer"
}


