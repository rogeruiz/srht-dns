#!/bin/bash

set +x
cat << TFCRC > ~/.terraformrc
credentials "app.terraform.io" {
  token = "$(cat ~/.user-token-tf-gandi-dns)"
}
TFCRC
set -x