curl --location 'http://10.0.70.68:5500/cardApi/SetCardStatus' \
--header 'Content-Type: application/json' \
--data '{
  "cardId": "65",
  "cnic": "4230194806487",
  "customerCode": "0000000000000031",
  "status": "01"
}'