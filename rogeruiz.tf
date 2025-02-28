resource "gandi_livedns_domain" "rogeruiz" {
  name = "rogeruiz.com"
}

resource "gandi_livedns_record" "rogeruiz_kids_cname" {
  zone = resource.gandi_livedns_domain.rogeruiz.id
  name = "kids"
  type = "CNAME"
  ttl  = "5400"
  values = [
    "pages.sr.ht.",
  ]
}

resource "gandi_livedns_record" "rogeruiz_root_mx" {
  zone = resource.gandi_livedns_domain.rogeruiz.id
  name = "@"
  type = "MX"
  ttl  = 3600
  values = [
    "10 mx1.forwardemail.net.",
    "10 mx2.forwardemail.net."
  ]
}

resource "gandi_livedns_record" "rogeruiz_root_txt" {
  zone = resource.gandi_livedns_domain.rogeruiz.id
  name = "@"
  type = "TXT"
  ttl  = 3600
  values = [
    "forward-email-site-verification=45Jc1z9SEu",
  ]
}

resource "gandi_livedns_record" "rogeruiz_dmarc_txt" {
  zone = resource.gandi_livedns_domain.rogeruiz.id
  name = "_dmarc"
  type = "TXT"
  ttl  = 3600
  values = [
    "v=DMARC1; p=reject; pct=100; rua=mailto:dmarc-67b41651b6269c82332cb80e@forwardemail.net;",
  ]
}
resource "gandi_livedns_record" "rogeruiz_dkim_txt" {
  zone = resource.gandi_livedns_domain.rogeruiz.id
  name = "fe-3c924ead09._domainkey"
  type = "TXT"
  ttl  = 3600
  values = [
    "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDoRWoolefoIg5fCu7ev3+d3YA47Jpww2bMDyotDQ4lG7ySnq3TBzZQP/rSB/Mkp6i92FUrdf/r9A3YNbP5ilhHveFWCMn+Y7Kbk24ecPhH6PwN1J4XS1iKGxX+tMqcBoWMu8yFe/xAxMJTWsin0HTXDgD2oskrIcVnfsq5FvCbLQIDAQAB;",
  ]
}

resource "gandi_livedns_record" "rogeruiz_return-path_cname" {
  zone = resource.gandi_livedns_domain.rogeruiz.id
  name = "fe-bounces"
  type = "CNAME"
  ttl  = 10800
  values = [
    "forwardemail.net.",
  ]
}
