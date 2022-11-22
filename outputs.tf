output "nine_points_domain" {
  value       = resource.gandi_livedns_domain.nine_points.id
  description = "The domain ID for Nine Points"
}

output "nine_points_www_cname" {
  value       = resource.gandi_livedns_record.nine_points_www_cname
  description = " The DNS www (subdomain) CNAME record for Nine Points"
}
