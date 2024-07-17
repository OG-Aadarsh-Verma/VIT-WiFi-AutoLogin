#!/bin/bash

# Define login & redirect(ping) url
REDIRECT_URL='https://www.google.com/'
LOGIN_URL="http://phc.prontonetworks.com/cgi-bin/authlogin?URI=$REDIRECT_URL"

# Define credentials
USERNAME='YOUR_USERNAME'
PASSWORD='YOUR_PASSWORD'
SERVICE='ProntoAuthentication'


while true; do
        # check if connection is established
        if ping -q -c 1 $REDIRECT_URL >/dev/null; then
                # website returns a response, sleep for 2 minutes
                sleep 120
        else
                # ping failed, login using curl the login portal
                curl -X POST \
                        $LOGIN_URL \
                        -H 'Content-Type: application/x-www-form-urlencoded' \
                        -d "userId=$USERNAME&password=$PASSWORD&serviceName=$SERVICE&Submit22=Login"
                # wait 5 seconds before testing again
                sleep 5
        fi      
done    
