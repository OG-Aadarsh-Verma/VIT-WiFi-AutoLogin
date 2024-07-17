#!/bin/bash

REDIRECT_URL='https://www.google.com/'
LOGIN_URL="http://phc.prontonetworks.com/cgi-bin/authlogin?URI=$REDIRECT_URL"
USERNAME='YOUR_USERNAME'
PASSWORD='YOUR_PASSWORD'
SERVICE='ProntoAuthentication'

curl -X POST \
        $LOGIN_URL \
        -H 'Content-Type: application/x-www-form-urlencoded' \
        -d "userId=$USERNAME&password=$PASSWORD&serviceName=$SERVICE&Submit22=Login"
echo -e '\n'
