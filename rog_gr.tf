resource "gandi_livedns_domain" "rog_gr" {
  name = "rog.gr"
}

resource "gandi_livedns_record" "rog_gr_root_a" {
  zone = resource.gandi_livedns_domain.rog_gr.id
  name = "@"
  type = "A"
  ttl  = "900"
  values = [
    "46.23.81.157",
  ]
}

resource "gandi_livedns_record" "rog_gr_root_txt" {
  zone = resource.gandi_livedns_domain.rog_gr.id
  name = "@"
  type = "TXT"
  ttl  = 10800
  values = [
    "\"v=spf1 include:_mailcust.gandi.net ?all\"",
    "\"google-site-verification=IztwJSDmloiYJFmZU9U-oIl4VTX3fdTVcVbfIIB3PO8\"",
  ]
}

resource "gandi_livedns_record" "rog_gr_imaptcp_srv" {
  zone = resource.gandi_livedns_domain.rog_gr.id
  name = "_imap._tcp"
  type = "SRV"
  ttl  = 10800
  values = [
    "0 0 0   .",
  ]
}

resource "gandi_livedns_record" "rog_gr_imapstcp_srv" {
  zone = resource.gandi_livedns_domain.rog_gr.id
  name = "_imaps._tcp"
  type = "SRV"
  ttl  = 10800
  values = [
    "0 1 993 mail.gandi.net.",
  ]
}

resource "gandi_livedns_record" "rog_gr_pop3_srv" {
  zone = resource.gandi_livedns_domain.rog_gr.id
  name = "_pop3._tcp"
  type = "SRV"
  ttl  = 10800
  values = [
    "0 0 0   .",
  ]
}

resource "gandi_livedns_record" "rog_gr_pop3s_srv" {
  zone = resource.gandi_livedns_domain.rog_gr.id
  name = "_pop3s.tcp"
  type = "SRV"
  ttl  = 10800
  values = [
    "10 1 995 mail.gandi.net.",
  ]
}

resource "gandi_livedns_record" "rog_gr_submission_srv" {
  zone = resource.gandi_livedns_domain.rog_gr.id
  name = "_submission._tcp"
  type = "SRV"
  ttl  = 10800
  values = [
    "0 1 465 mail.gandi.net.",
  ]
}

resource "gandi_livedns_record" "rog_gr_gmi_cname" {
  zone = resource.gandi_livedns_domain.rog_gr.id
  name = "gmi"
  type = "CNAME"
  ttl  = "5400"
  values = [
    "pages.sr.ht.",
  ]
}

resource "gandi_livedns_record" "rog_gr_dot_cname" {
  zone = resource.gandi_livedns_domain.rog_gr.id
  name = "dot"
  type = "CNAME"
  ttl  = "5400"
  values = [
    "rogeruiz.github.io.",
  ]
}

resource "gandi_livedns_record" "rog_gr_write_cname" {
  zone = resource.gandi_livedns_domain.rog_gr.id
  name = "write"
  type = "CNAME"
  ttl  = "10800"
  values = [
    "pages.sr.ht.",
  ]
}

resource "gandi_livedns_record" "rog_gr_resume_cname" {
  zone = resource.gandi_livedns_domain.rog_gr.id
  name = "resume"
  type = "CNAME"
  ttl  = "10800"
  values = [
    "pages.sr.ht.",
  ]
}
