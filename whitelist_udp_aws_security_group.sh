#!/bin/bash
#Created by V. Y. Lindung S.
input=$1
while IFS= read -r line
do
aws_security_group=$(echo $line | awk '{print $1}') #will get Security Group ID information
aws_whitelist_port=$(echo $line | awk '{print $2}') #will get TCP/UDP port information
aws_whitelist_prefix=$(echo $line | awk '{print $3}') #will get Prefix/Subnet information
aws ec2 authorize-security-group-ingress --group-id $aws_security_group --protocol udp --port $aws_whitelist_port --cidr $aws_whitelist_prefix
done < "$input" #end command
