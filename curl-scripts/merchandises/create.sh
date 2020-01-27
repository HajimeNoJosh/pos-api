#!/bin/bash

curl "http://localhost:4741/merchandises" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "merchandise": {
      "name": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'",
      "department": "'"${DEPARTMENT}"'",
      "vendor": "'"${VENDOR}"'",
      "tax": "'"${TAX}"'",
      "cost": "'"${COST}"'",
      "retail": "'"${RETAIL}"'",
      "quantity": "'"${QUANTITY}"'",
      "barcode": "'"${BARCODE}"'",
      "category": "'"${CATEGORY}"'"
    }
  }'

echo
