#!/bin/bash

#Get the ip address
read ip

#Get the port number
read port

if nc -z $ip $port; then
       echo "Port $port is open on host $ip"
else
	echo "Port $port is closed on host $ip"
fi
