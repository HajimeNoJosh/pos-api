# Ex: TOKEN=tokengoeshere ID=idgoeshere TEXT=textgoeshere sh curl-scripts/examples/update.sh

curl "http://localhost:4741/merchandises/${ID}" \
  --include \
  --request PATCH \
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
