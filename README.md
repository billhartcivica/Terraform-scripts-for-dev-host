# Terraform-scripts-for-dev-host
Scripts for both Terraform and a shell script to initiate the build.
To use, amend the create.sh script, substituting your own AWS password and secret.
Amend the cloud-template.tem file to suit, changing instance type or drive size, etc.
Once completed, run 'create.sh <machine-name> <user-name> <password>', substituting the correct
machine name, username and password as required.
Once run, the script will present the IP address of the completed machine's Elastic IP.
Run your RDP client (mstsc from 'run' in Windows), enter the IP of the new machine.
When prompted, enter the username and password provided in the original 'create.sh' command.
Wait for the machine to commplete creating the X-Window profile. 
