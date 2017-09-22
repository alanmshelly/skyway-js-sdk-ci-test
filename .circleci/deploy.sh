#!/bin/bash

# Set environment variables
if [ "$1" == "master" ]; then
    export S3_DIST_BUCKET="s3://eclrtc-cdn-production/"
    export S3_EXAMPLE_BUCKET="s3://eclrtc-example-production"

elif [ "$1" == "staging" ]; then
    export S3_DIST_BUCKET="s3://eclrtc-cdn-staging/"
    export S3_EXAMPLE_BUCKET="s3://eclrtc-example-staging/"

else
    exit 1
fi

echo "========================="
echo "AWS_ACCESS_KEY_ID: ${AWS_ACCESS_KEY_ID}"
echo "AWS_SECRET_ACCESS_KEY: ${AWS_SECRET_ACCESS_KEY}"
echo "========================="
