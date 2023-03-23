resource "gandi_livedns_domain" "rog_gr" {
  name = "rog.gr"
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
