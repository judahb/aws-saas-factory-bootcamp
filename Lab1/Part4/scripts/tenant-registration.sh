#!/bin/bash
echo "BUILDING TENANT REGISTRATION SERVICE"
echo "--------------------------"
echo 'SETTING UP ENV VARIABLES'
export AWS_DEFAULT_REGION="us-west-2"
export BUILD_FILE_PATH="./../app/source/tenant-registration/build.sh"
export SERVICE_NAME="tenant-registration"
node ./../../../scripts/expose-region.js
node ./../../../scripts/expose-repository.js
node ./../../../scripts/expose-service-name.js
echo 'MOVING TO SERVICE DIRECTORY'
cd ../app/source/"${SERVICE_NAME}"
echo 'BUILDING CONTAINER'
./build.sh