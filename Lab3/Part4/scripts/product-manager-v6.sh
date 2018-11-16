#!/bin/bash
echo "BUILDING PRODUCT MANAGER V6 - TENANT SCOPED CREDENTIALS"
echo "--------------------------"
echo "Installing scripts"
./install.sh
echo 'SETTING UP ENV VARIABLES'
export AWS_DEFAULT_REGION="us-west-2"
export BUILD_FILE_PATH="./../app/source/product-manager/build.sh"
export SERVICE_NAME="product-manager"
node ./../../../scripts/expose-region.js
node ./../../../scripts/expose-repository.js
node ./../../../scripts/expose-service-name.js
echo 'MOVING TO SERVICE DIRECTORY'
cd ../app/source/"${SERVICE_NAME}"
echo 'BUILDING CONTAINER'
./build.sh