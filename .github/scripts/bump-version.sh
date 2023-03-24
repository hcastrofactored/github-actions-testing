#!/bin/bash

# Get the version number from the first argument
version=$1

# Remove 'v' from version
version_without_v=$(echo $version | cut -dv -f2)

# Split the version string into major and minor version numbers
major=$(echo $version_without_v | cut -d. -f1)
minor=$(echo $version_without_v | cut -d. -f2)

# Increment the minor version number
minor=$((minor+1))

# Check if the minor version number is now 10 and increment the major version number if it is
if [ $minor -eq 10 ]; then
    major=$((major+1))
    minor=0
fi

# Output the new version number
echo "v${major}.${minor}"