#!/bin/bash

# Check if all required arguments are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <repository_link> <commit_hash> <tag_name>"
    exit 1
fi

# Assign arguments to variables
repository_link=$1
commit_hash=$2
tag_name=$3

# Checkout the specific commit
git checkout $commit_hash || { echo "Error: Unable to checkout commit"; exit 1; }

# Create a git tag
git tag $tag_name $commit_hash || { echo "Error: Unable to create tag"; exit 1; }

# Push the tag to the remote repository
git push origin $tag_name || { echo "Error: Unable to push tag to remote repository"; exit 1; }

echo "Tag $tag_name created and pushed successfully."