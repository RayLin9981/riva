#!/usr/bin/env bash
set -e

# 載入共用 .env
source "$(dirname "$0")/scripts/load-env.sh"
# helm fetch https://helm.ngc.nvidia.com/nvidia/riva/charts/riva-api-2.19.0.tgz \
#        --username=\$oauthtoken --password=$NGC_API_KEY --untar
#
# helm upgrade --install -f riva-api/values.yaml --create-namespace=true -n riva-system riva-api riva-api

helm upgrade -n riva-system --create-namespace --install riva-api \
    --set ngcCredentials.password=`echo -n $NGC_API_KEY` \
    --set ngcCredentials.email=ray.lin@fongcon.com.tw \
    --set modelRepoGenerator.modelDeployKey=`echo -n model_key_string | base64 -w0` riva-api
