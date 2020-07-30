#!/bin/bash
#input="/var/www/html/whitelist_sg.txt" #change the directory of the list of subdomain and value
input=$1
while IFS= read -r line
do
aws_security_group=$(echo $line | awk '{print $1}') #will get Security Group ID information
aws_whitelist_port=$(echo $line | awk '{print $2}') #will get TCP/UDP port information
aws_whitelist_prefix=$(echo $line | awk '{print $3}') #will get prefix/subnet information
aws ec2 revoke-security-group-ingress --group-id $aws_security_group --protocol tcp --port $aws_whitelist_port --cidr $aws_whitelist_prefix
done < "$input" #end command
