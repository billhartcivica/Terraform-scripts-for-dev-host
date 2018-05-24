#!/bin/sh
# Set environment variables. Machine name, username and password set as script parameters. Substitute your own Access Key and Secret Key below.
export ACCESS_KEY=XXXXXXXXXXXXXXXXXXXX
export SECRET_KEY=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
export MACHINE_NAME=$1
export USERNAME=$2
export USERPASS=$3

# Sanity check the script run
if (( $# < 3 )); then
    echo Usage: 'create.sh <machine-name> <user-name> <user-password>'
    exit 1
fi

# Substitute env params into script template
rm -rf cloud.tf; envsubst < "cloud-template.tem" > "cloud.tf";

# Apply the script.
/usr/bin/terraform apply -input=false -auto-approve
