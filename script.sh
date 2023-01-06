#!/bin/bash

#Set the directory to watch
watchdir="/home/bsm"

#set the log file
logfile="/var/log/watchdir.log"

#connect to the database
psql -h localhost -U postgres -d mydb <<EOF
#run the loop indefinitely
while true; do
    #find all files in the watched directory that have been modified in the last 60 seconds
    for file in $(find $watchdir -mmin -1); do
    
    #log the change
    echo "$(date): $file was modified" >> $logfile
    
    #insert the change into the changes table
    INSERT INTO changes (filename, deleted_at) VALUES ('$file', NULL);
    
done
    
  #sleep for 60 seconds
  sleep 60
    
done
EOF
