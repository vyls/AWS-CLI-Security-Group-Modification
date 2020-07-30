# AWS-Lab
I create BASH and PowerShell script to add or remove AWS Security Group List if we have multiple or many record. 
This script just use simple looping process.

You can use this script after configure your AWS CLI parameter.

If you still not install AWS-CLI, you can install it both on Windows or Linux with following this AWS Documentation:

Windows Installation
https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-windows.html

Linux Installation:
https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html

To Add and Remove Security group we need define the correct permission. Use this permission to Add/Remove for Ingress/Inbound rule:
"ec2:AuthorizeSecurityGroupIngress"
"ec2:RevokeSecurityGroupIngress"

And don't forget to use Resource is All - Resource": "*"

After you finish configure AWS user account for Add/Remove Security Group, then you can configure your AWS-CLI

Configure AWS-CLI:
https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html

After that, you can use these script both on Linux via Bash Shell or Windows via PowerShell.

Windows PowerShell Example:
Open PowerShell > Go to your directory file that store whitelist_aws_security_group.ps1 script
Execute whitelist_aws_security_group.ps1 then press Enter
Type your whitelist file location
Then powershell script will execute the command

Linux Bash Shell Example:
Open terminal > Execute that bash script followed by whitelist file location


