#!/bin/sh

YOUR_KMS_KEYRING=my_sample_key
YOUR_KMS_KEY=my_sample_key
YOUR_GCP_PROJECT_NAME=samplefordockerfiles
TAG_NAME=gcpkms
YOUR_APP_NAME=sample

cp ./cloudbuild.yaml ./cloudbuild.yaml_backup
# TODO sed
