#!/bin/sh

USER_NAME=test2
#ENDPOINT="http://192.168.50.51:8080/drools-wb/rest/user"
ENDPOINT="http://localhost:8080/drools-wb/rest/user"

# create user.
curl -v -X POST -u "rest:rest123" \
  -H "Content-Type:application/json" -H "Accept: application/json" \
  "${ENDPOINT}" \
  -d "${USER_NAME}"

# assign a role.
curl -v -X PUT -u "rest:rest123" \
  -H "Content-Type:application/json" -H "Accept: application/json" \
  "${ENDPOINT}/roles/${USER_NAME}" \
  -d '["analyst"]'

# assign password.
curl -v -X PUT -u "rest:rest123" \
  -H "Content-Type:application/json" -H "Accept: application/json" \
  "${ENDPOINT}/password/${USER_NAME}" \
  -d 'password'

