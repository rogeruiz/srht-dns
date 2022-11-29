#!/bin/bash

set +x

# README: I really don't want to do this but I don't seem to have a choice
# here. The TF CLI doesn't work with the `TF_VAR_gandi_api_key` variable.
cat << TFVARS > ~/${project}/terraform.tfvars
gandi_api_key = "$(cat ~/.gandi-api-key)"
TFVARS

set -x
