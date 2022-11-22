resource "gandi_livedns_domain" "parecesoftly" {
  name = "parecesoftly.co"
}

resource "gandi_livedns_record" "parecesoftly_root_a" {
  zone = resource.gandi_livedns_domain.parecesoftly.id
  name = "@"
  type = "A"
  ttl  = "10800"
  values = [
    "173.195.146.139",
  ]
}
