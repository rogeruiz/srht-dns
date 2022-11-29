#!/bin/bash

set +x

# README: I really don't want to do this but I don't seem to have a choice
# here. The TF CLI doesn't work with the `TF_TOKEN_app_terraform_io` variable.
cat << TFCRC > ~/.terraformrc
credentials "app.terraform.io" {
  token = "$(cat ~/.user-token-tf-gandi-dns)"
}
TFCRC

set -x
