#!/bin/sh

USER_NAME=test

# create user.
curl -v -X POST -u "rest:rest123" \
  -H "Content-Type:application/json" -H "Accept: application/json" \
  "http://localhost:8080/drools-wb/rest/user" \
  -d "${USER_NAME}"

# assign a role.
curl -v -X PUT -u "rest:rest123" \
  -H "Content-Type:application/json" -H "Accept: application/json" \
  "http://localhost:8080/drools-wb/rest/user/roles/${USER_NAME}" \
  -d '["analyst"]'

# assign password.
curl -v -X PUT -u "rest:rest123" \
  -H "Content-Type:application/json" -H "Accept: application/json" \
  "http://localhost:8080/drools-wb/rest/user/password/${USER_NAME}" \
  -d 'password'

