#!/bin/bash
#
# Shell script for deploying HTML builds
# to the gh-pages branch of github.com/spdx/spdx-spec
#
# Credits: https://stanislav.se/encrypt-github-deploy-key-with-travis-ci/

set -x

if env | grep ^encrypted_a15e84b7ea16_key= > /dev/null; then
    echo "Deploying to GitHub pages"
    
    # Set Git committer, email and remote server
    git config user.name "Travis CI"
    git config user.email "notifications@travis-ci.org"
    git remote set-url origin git@github.com:tsteenbe/openchain-spec.git
    
    git remote -v
    
    # Decrypt private key
    openssl aes-256-cbc -K $encrypted_a15e84b7ea16_key -iv $encrypted_a15e84b7ea16_iv -in $TRAVIS_BUILD_DIR/.travis/deploy-key.enc -out $TRAVIS_BUILD_DIR/.travis/deploy-key -d
    
    # Set file permissions so SSH accepts private key
    chmod 600 $TRAVIS_BUILD_DIR/.travis/deploy-key

    # Start the ssh agent
    eval "$(ssh-agent -s)"
    
    # Add key to SSH
    ssh-add $TRAVIS_BUILD_DIR/.travis/deploy-key
    
    gulp publish
else
    echo "Skipping deployment to GitHub pages - deploy env variable not set"
fi