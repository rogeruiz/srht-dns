resource "gandi_livedns_domain" "nine_points" {
  name = "0p9.co"
}

resource "gandi_livedns_record" "nine_points_root_a" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "@"
  type = "A"
  ttl  = 10800
  values = [
    "217.70.184.38",
  ]
}

resource "gandi_livedns_record" "nine_points_root_mx" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "@"
  type = "MX"
  ttl  = 10800
  values = [
    "10 spool.mail.gandi.net.",
    "50 fb.mail.gandi.net.",
  ]
}

resource "gandi_livedns_record" "nine_points_root_txt" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "@"
  type = "TXT"
  ttl  = 10800
  values = [
    "\"v=spf1 include:_mailcust.gandi.net ?all\"",
  ]
}

resource "gandi_livedns_record" "nine_points_imaptcp_srv" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "_imap._tcp"
  type = "SRV"
  ttl  = 10800
  values = [
    "0 0 0   .",
  ]
}

resource "gandi_livedns_record" "nine_points_imapstcp_srv" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "_imaps._tcp"
  type = "SRV"
  ttl  = 10800
  values = [
    "0 1 993 mail.gandi.net.",
  ]
}

resource "gandi_livedns_record" "nine_points_pop3_srv" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "_pop3._tcp"
  type = "SRV"
  ttl  = 10800
  values = [
    "0 0 0   .",
  ]
}

resource "gandi_livedns_record" "nine_points_pop3s_srv" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "_pop3s.tcp"
  type = "SRV"
  ttl  = 10800
  values = [
    "10 1 995 mail.gandi.net.",
  ]
}

resource "gandi_livedns_record" "nine_points_submission_srv" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "_submission._tcp"
  type = "SRV"
  ttl  = 10800
  values = [
    "0 1 465 mail.gandi.net.",
  ]
}

resource "gandi_livedns_record" "nine_points_gm1domainkey_cname" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "gm1._domainkey"
  type = "CNAME"
  ttl  = 10800
  values = [
    "gm1.gandimail.net.",
  ]
}

resource "gandi_livedns_record" "nine_points_gm2domainkey_cname" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "gm2._domainkey"
  type = "CNAME"
  ttl  = 10800
  values = [
    "gm2.gandimail.net.",
  ]
}

resource "gandi_livedns_record" "nine_points_gm3domainkey_cname" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "gm3._domainkey"
  type = "CNAME"
  ttl  = 10800
  values = [
    "gm3.gandimail.net.",
  ]
}

resource "gandi_livedns_record" "nine_points_webmail_cname" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "webmail"
  type = "CNAME"
  ttl  = 10800
  values = [
    "webmail.gandi.net.",
  ]
}

resource "gandi_livedns_record" "nine_points_www_cname" {
  zone = resource.gandi_livedns_domain.nine_points.id
  name = "www"
  type = "CNAME"
  ttl  = 10800
  values = [
    "webredir.vip.gandi.net.",
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
