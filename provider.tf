# The Gandi provider lives at:
# https://github.com/go-gandi/terraform-provider-gandi

# To make sure we don't expose things, let's leverage the `GANDI_KEY`
# environment variable to replace the `key = ""` field in the provider
# below.

provider "gandi" {
  key = var.gandi_api_key
}
