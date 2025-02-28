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

resource "gandi_livedns_record" "nine_points_dmarc_txt" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "_dmarc"
  type = "TXT"
  ttl  = 3600
  values = [
    "v=DMARC1; p=reject; pct=100; rua=mailto:dmarc-67b41500b6269c82332cb699@forwardemail.net;",
  ]
}
resource "gandi_livedns_record" "nine_points_dkim_txt" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "fe-c2f4de89f5._domainkey"
  type = "TXT"
  ttl  = 3600
  values = [
    "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC3VWKj5Hs7HmbqBbzbLmovW5fG6FOgeTUwUUfhNlc1Rh3UNXlNMT7PVI3wSOlk5yqoS7Ro7n8Ju5WJmS7pNyWXDYnArLBxdYlTjk4IreCGYGo5ohSv+9vMBkfh+5Xvh3/Lf13AbYEh3ioIj6lqMl/Rd0jqjv1lFVv8C2G5JpvzlwIDAQAB;",
  ]
}

resource "gandi_livedns_record" "nine_points_return-path_cname" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "fe-bounces"
  type = "CNAME"
  ttl  = 10800
  values = [
    "forwardemail.net.",
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
