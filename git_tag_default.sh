#!/bin/bash

# Default values for repository link, commit hash, and tag name
# repository_link="https://github.com/NirusanLK/shell_test.git"
commit_hash="36670db9b65834d69a0fdc9de7ec089fde90d183"
tag_name="tag4.0"

# echo $commit_hash
# echo $tag_name
# Change directory to the cloned repository
cd /home/nirusan-intern/shell_test || { echo "Error: Unable to change directory"; exit 1; }

# Validating the commit hash
# if [git checkout $commit_hash]
# then 
#     echo "The commit hash is valid"
# else
#   { echo "Error: Unable to checkout commit"; exit 1; }
# fi
git tag -a $tag_name $commit_hash -m "Release tag for RAPI December R1.1 Patch" || { echo "Error: Unable to commit hash"; exit 1; }

# Create a git tag
# git tag $tag_name $commit_hash || { echo "Error: Unable to create tag"; exit 1; }

# Push the tag to the remote repository
git push origin $tag_name || { echo "Error: Unable to push tag to remote repository"; exit 1; }

echo "Tag $tag_name created and pushed successfully."