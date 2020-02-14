#!/bin/bash

COLLECTION_PATH="collections/support-notifications-importer.postman_collection.json"
ENV_PATH="environment/support-notification-docker-security.postman_environment.json"


echo "Info: import SupportNotification's test data."

source $(dirname "$0")/security/setupSecurityAccount.sh -useradd

docker-compose -f ../docker-compose-test-tools.yml run --rm postman run ${COLLECTION_PATH} --environment=${ENV_PATH} \
  --insecure --global-var accessToken="$TOKEN"

source $(dirname "$0")/security/setupSecurityAccount.sh -userdel

echo "Info: SupportNotification's test data imported"