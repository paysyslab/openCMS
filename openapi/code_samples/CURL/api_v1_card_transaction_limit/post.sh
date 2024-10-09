curl --location 'http://10.0.70.68:5500/cardApi/SetCardStatus' \
--header 'Content-Type: application/json' \
--data '{
  "cardId":"175",
  "cardStatus":"ACTIVE"
}'