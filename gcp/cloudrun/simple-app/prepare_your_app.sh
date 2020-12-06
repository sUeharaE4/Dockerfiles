#!/bin/sh

YOUR_KMS_KEYRING=my_sample_key
YOUR_KMS_KEY=my_sample_key
YOUR_GCP_PROJECT_NAME=samplefordockerfiles
TAG_NAME=simpleapp
YOUR_APP_NAME=simpleapp

convert_target=cloudbuild.yaml
cp ${convert_target} ${convert_target}_backup

sed -i "s/YOUR_KMS_KEYRING/${YOUR_KMS_KEYRING}/" ${convert_target}
sed -i "s/YOUR_KMS_KEY/${YOUR_KMS_KEY}/" ${convert_target}
sed -i "s/YOUR_GCP_PROJECT_NAME/${YOUR_GCP_PROJECT_NAME}/" ${convert_target}
sed -i "s/TAG_NAME/${TAG_NAME}/" ${convert_target}
sed -i "s/YOUR_APP_NAME/${YOUR_APP_NAME}/" ${convert_target}
