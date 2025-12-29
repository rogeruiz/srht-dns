resource "gandi_livedns_domain" "parecesoftly" {
  name = "parecesoftly.co"
}

resource "gandi_livedns_record" "parecesoftly_root_a" {
  zone = resource.gandi_livedns_domain.parecesoftly.id
  name = "@"
  type = "A"
  ttl  = "10800"
  values = [
    "46.23.81.157",
  ]
}

resource "gandi_livedns_record" "parecesoftly_root_mx" {
  zone = resource.gandi_livedns_domain.parecesoftly.id
  name = "@"
  type = "MX"
  ttl = 3600
  values = [
    "10 mx1.forwardemail.net.",
    "10 mx2.forwardemail.net."
  ]
}

resource "gandi_livedns_record" "parecesoftly_root_txt" {
  zone = resource.gandi_livedns_domain.parecesoftly.id
  name = "@"
  type = "TXT"
  ttl  = 3600
  values = [
    "forward-email-site-verification=rKjvhnw7RG",
  ]
}
