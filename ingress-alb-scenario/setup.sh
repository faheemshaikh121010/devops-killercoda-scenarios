#!/bin/bash

# Create directory
mkdir -p /root/manifests

# Copy files from repo to target location
cp -r ingress-alb-scenario/manifests/* /root/manifests/

# Make verify scripts executable
chmod +x ingress-alb-scenario/step*/verify.sh