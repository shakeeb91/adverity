#!/bin/bash
INPUT=$1
INVENTORYFILEPATH=./inventory.yaml

function checkifavailable() {
   if [[ $SERVER_IP = *.*.*.* ]]; then
      echo "SSH to Server = $SERVER_IP"
      ssh ubuntu@"$SERVER_IP"
   else
      echo "Data for this server is not present in Inventorylist"
   fi
}

function checkforserverip() {
   SERVER_IP=$(cat <$INVENTORYFILEPATH | grep "ip: $INPUT" -A1 | grep bastion | awk '{print $2}')
   checkifavailable
}

function checkforservername() {
   SERVER_IP=$(cat <$INVENTORYFILEPATH | grep "$INPUT" -A2 | grep bastion | awk '{print $2}')
   checkifavailable
}

if [[ $INPUT = *.*.*.* ]]; then
   checkforserverip
elif [[ $INPUT = server* && ${#INPUT} -gt 6 ]]; then
   checkforservername
else
   echo "Please Enter correct ServerName or IP"
fi
