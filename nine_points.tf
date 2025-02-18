resource "gandi_livedns_domain" "nine_points" {
  name = "0p9.co"
}

resource "gandi_livedns_record" "nine_points_root_a" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "@"
  type = "A"
  ttl  = 10800
  values = [
    "46.23.81.157",
  ]
}

resource "gandi_livedns_record" "nine_points_root_mx" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "@"
  type = "MX"
  ttl  = 3600
  values = [
    "10 mx1.forwardemail.net.",
    "10 mx2.forwardemail.net."
  ]
}

resource "gandi_livedns_record" "nine_points_root_txt" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "@"
  type = "TXT"
  ttl  = 3600
  values = [
    "forward-email-site-verification=hb3tJy0kM0",
  ]
}

resource "gandi_livedns_record" "nine_points_www_cname" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "www"
  type = "CNAME"
  ttl  = 10800
  values = [
    "pages.sr.ht.",
  ]
}

resource "gandi_livedns_record" "nine_points_cook_cname" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "cook"
  type = "CNAME"
  ttl  = 5400
  values = [
    "pages.sr.ht.",
  ]
}

resource "gandi_livedns_record" "nine_points_useless_buttons_cname" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "useless-buttons"
  type = "CNAME"
  ttl  = 5400
  values = [
    "cname.vercel-dns.com.",
  ]
}
