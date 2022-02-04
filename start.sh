#!/bin/bash
#
# Start the sandbox with student ID

if [ ! $# -eq 3 ]; then
    echo "Usage: ./start.sh student_id access_token syslog_server_IP"
    exit 1
else
    ANSIBLE_ARGS="--extra-vars \"student_id=$1\" --extra-vars \"access_token=$2\" --extra-vars \"central_syslog_ip=$3\"" vagrant up
fi
