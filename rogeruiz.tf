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

resource "gandi_livedns_record" "rogeruiz_lol_cname" {
  zone = resource.gandi_livedns_domain.rogeruiz.id
  name = "lol"
  type = "CNAME"
  ttl  = "5400"
  values = [
    "domains.tumblr.com.",
  ]
}
