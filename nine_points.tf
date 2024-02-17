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
  ttl  = 10800
  values = [
    "10 mx01.mail.icloud.com.",
    "10 mx02.mail.icloud.com.",
  ]
}

resource "gandi_livedns_record" "nine_points_root_txt" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "@"
  type = "TXT"
  ttl  = 10800
  values = [
    "apple-domain=eK9WNHbcuQdw4QrJ",
    "v=spf1 include:icloud.com ~all",
  ]
}

resource "gandi_livedns_record" "nine_points_root_dkim" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "sig1._domainkey"
  type = "CNAME"
  ttl  = 10800
  values = [
    "sig1.dkim.0p9.co.at.icloudmailadmin.com.",
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
