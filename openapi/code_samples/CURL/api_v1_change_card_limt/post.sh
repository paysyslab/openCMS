curl --location 'http://10.0.70.68:5500/card/limits/change' \
--header 'Content-Type: application/json' \
--data '{
  "cardNo":"xxxxxx",
  "customerCnic":"41302-32123212",
  "accountNo":"123456",
  "cardExpiry":"2207",
  "newLimit":"12345"
}'