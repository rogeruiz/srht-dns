# DNS

This repository contains the DNS records for domains that I own. I don't
consider any of this information sensitive or private as it's accessible
by different tools. I use Terraform to manage my personal cloud
infrastructure using Gandi.

## Security

> Exist in plain sight. Security through obscurity is _sometimes_ bullshit.

This repository contains references to sensitive information used by Terraform.
You can leverage some of this code to work with Gandi yourself, but note that
the infrastructure is personally managed by me. If your cloud provider isn't
Gandi, this repository may not be useful to you. But if you use Gandi too,
then make sure you leverage your own Gandi account and update the resources here
to match your infrastructure.

### Terraform provider

This project uses the Gandi Terraform provider. You can read more about it on
the Terraform registry.

[=> The gandi Terraform provider by go-gandi](https://registry.terraform.io/providers/go-gandi/gandi/2.2.0 " Terraform provider for the Gandi Domain services.")

## Infrastructure

I use Gandi as a DNS provider. You can find more information about Gandi from
their homepage.

[=> gandi.net homepage (english)](https://www.gandi.net/en "Click to see")

[=> gandi.net página (español)](https://www.gandi.net/es "Haga clic pa' ver")
