terraform {
  cloud {
    organization = "gandi-dns"
    workspaces {
      name = "main"
    }
  }

  required_providers {
    gandi = {
      source  = "go-gandi/gandi"
      version = ">= 2.1.0"
    }
  }
}
