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
