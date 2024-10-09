curl --location 'http://10.0.70.68:5099/api/v1/Card/createCard' \
--header 'Content-Type: application/json' \
--data-raw '{
  "folioNumber": "000001111120", 
  "action":"01", 
  "cnic": "4230194806411", 
  "cardTitle": "Ahmed Khan", 
  "productCode": "06", 
  "cardExpiryDate": "2207",
  "primaryCardcnic": "",    
  "relation": "", 
  "nationalityCode": "1", 
  "firstname": "Samiullah", 
  "lastname": "Khan", 
  "companyName": "PaysysLabs", 
  "email": "saasc@xyz.com", 
  "motherMaideNname": "mother", 
  "fatherHusbandName": "father", 
  "city": "Karachi", 
  "dateOfBirth": "21-01-1994", 
  "profession": "Doctor", 
  "gender": "M", 
  "mailingAddress": "pasdasdasda echs block 6", 
  "homeAddress": "pechs block 5", 
  "officeAddress": "Smart Tower", 
  "homePhone": "", 
  "officePhone": "", 
  "cell": "03334422111" 
}'