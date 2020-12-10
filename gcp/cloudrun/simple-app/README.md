# Simple api sample

This is a sample of how to use Google Cloud Run with cloud build.
Cloud run make it easy to publish your application.
All you need is make docker api container and deploy to cloud run. Then cloud run manage your container.

This application only response status 200. So please implemant what you want and deploy.

## GCP setup
The following APIs need to be enabled in order to deploy applications using Cloud Run and Cloud Build: Cloud Run API, Cloud Build API, Compute Engin API, and Cloud Storage.
Please see documentation. https://cloud.google.com/cloud-build/docs/deploying-builds/deploy-cloud-run

## install gcloud sdk
Please see documentation of Google Cloud SDK instalation guide. https://cloud.google.com/sdk/docs/install

## make your application
Place the application script in the app directory. If you want to use GCS or some services needs to credencials, see this page(I will make sample someday). https://cloud.google.com/cloud-build/docs/securing-builds/use-encrypted-secrets-credentials

## build and deploy
Please set your gcp project, application name etc at prepare_your_app.sh. This script replace cloudbuild.yaml which config of cloud build. Then exec bellow commands.
```
bash prepare_your_app.sh
gcloud builds submit
```
