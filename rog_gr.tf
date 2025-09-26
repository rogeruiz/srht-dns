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
    "\"google-site-verification=IztwJSDmloiYJFmZU9U-oIl4VTX3fdTVcVbfIIB3PO8\"",
    "\"forward-email-site-verification=VHSl1st5jX\"",
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

resource "gandi_livedns_record" "rog_gr_root_mx" {
  zone = resource.gandi_livedns_domain.rog_gr.id
  name = "@"
  type = "MX"
  ttl = 3600
  values = [
    "10 mx1.forwardemail.net.",
    "10 mx2.forwardemail.net."
  ]
}
