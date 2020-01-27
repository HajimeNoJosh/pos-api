#!/bin/bash

curl "http://localhost:4741/merchandises" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
