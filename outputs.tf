output "nine_points_domain" {
  value       = resource.gandi_livedns_domain.nine_points.id
  description = "The domain ID for Nine Points"
}

output "nine_points_www_cname" {
  value       = resource.gandi_livedns_record.nine_points_www_cname
  description = " The DNS www (subdomain) CNAME record for Nine Points"
}

output "parecesoftly_domain" {
  value       = resource.gandi_livedns_domain.parecesoftly.id
  description = "The domain ID for Parece Softly"
}

output "parecesoftly_www_cname" {
  value       = resource.gandi_livedns_record.parecesoftly_root_a
  description = " The DNS Root A record for Parece Softly"
}

output "rogeruiz_domain" {
  value       = resource.gandi_livedns_domain.rogeruiz.id
  description = "The domain for Rogeruiz"
}

output "rogeruiz_kids_cname" {
  value       = resource.gandi_livedns_record.rogeruiz_kids_cname
  description = "The DNS kids (subdomain) CNAME record for Rogeruiz"
}

output "rogeruiz_lol_cname" {
  value       = resource.gandi_livedns_record.rogeruiz_kids_cname
  description = "The DNS lol (subdomain) CNAME record for Rogeruiz"
}
