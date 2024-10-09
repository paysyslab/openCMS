curl --location 'http://10.0.70.68:5099/api/v1/Card/generatecvc' \
--header 'Content-Type: application/json' \
--data '{
  "folioNumber": "000001111120",
  "cardId": "191",
  "cnic": "4230194806411",
  "customerCode": "0000000000000090",
  "maskCardNumber": "53254*****000915",
  "productcode": "07"
}'