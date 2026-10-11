output "apigee_environments_id" {
  description = "Map of id values across all apigee_environments, keyed the same as var.apigee_environments except keys with no id are omitted"
  value       = { for k, v in google_apigee_environment.apigee_environments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigee_environments_api_proxy_type" {
  description = "Map of api_proxy_type values across all apigee_environments, keyed the same as var.apigee_environments except keys with no api_proxy_type are omitted"
  value       = { for k, v in google_apigee_environment.apigee_environments : k => v.api_proxy_type if v.api_proxy_type != null && length(v.api_proxy_type) > 0 }
}
output "apigee_environments_client_ip_resolution_config" {
  description = "Map of client_ip_resolution_config values across all apigee_environments, keyed the same as var.apigee_environments except keys with no client_ip_resolution_config are omitted"
  value       = { for k, v in google_apigee_environment.apigee_environments : k => one(v.client_ip_resolution_config) if v.client_ip_resolution_config != null && length(v.client_ip_resolution_config) > 0 }
}
output "apigee_environments_deletion_policy" {
  description = "Map of deletion_policy values across all apigee_environments, keyed the same as var.apigee_environments except keys with no deletion_policy are omitted"
  value       = { for k, v in google_apigee_environment.apigee_environments : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "apigee_environments_deployment_type" {
  description = "Map of deployment_type values across all apigee_environments, keyed the same as var.apigee_environments except keys with no deployment_type are omitted"
  value       = { for k, v in google_apigee_environment.apigee_environments : k => v.deployment_type if v.deployment_type != null && length(v.deployment_type) > 0 }
}
output "apigee_environments_description" {
  description = "Map of description values across all apigee_environments, keyed the same as var.apigee_environments except keys with no description are omitted"
  value       = { for k, v in google_apigee_environment.apigee_environments : k => v.description if v.description != null && length(v.description) > 0 }
}
output "apigee_environments_display_name" {
  description = "Map of display_name values across all apigee_environments, keyed the same as var.apigee_environments except keys with no display_name are omitted"
  value       = { for k, v in google_apigee_environment.apigee_environments : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "apigee_environments_forward_proxy_uri" {
  description = "Map of forward_proxy_uri values across all apigee_environments, keyed the same as var.apigee_environments except keys with no forward_proxy_uri are omitted"
  value       = { for k, v in google_apigee_environment.apigee_environments : k => v.forward_proxy_uri if v.forward_proxy_uri != null && length(v.forward_proxy_uri) > 0 }
}
output "apigee_environments_name" {
  description = "Map of name values across all apigee_environments, keyed the same as var.apigee_environments except keys with no name are omitted"
  value       = { for k, v in google_apigee_environment.apigee_environments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "apigee_environments_node_config" {
  description = "Map of node_config values across all apigee_environments, keyed the same as var.apigee_environments except keys with no node_config are omitted"
  value       = { for k, v in google_apigee_environment.apigee_environments : k => one(v.node_config) if v.node_config != null && length(v.node_config) > 0 }
}
output "apigee_environments_org_id" {
  description = "Map of org_id values across all apigee_environments, keyed the same as var.apigee_environments except keys with no org_id are omitted"
  value       = { for k, v in google_apigee_environment.apigee_environments : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "apigee_environments_properties" {
  description = "Map of properties values across all apigee_environments, keyed the same as var.apigee_environments except keys with no properties are omitted"
  value       = { for k, v in google_apigee_environment.apigee_environments : k => one(v.properties) if v.properties != null && length(v.properties) > 0 }
}
output "apigee_environments_type" {
  description = "Map of type values across all apigee_environments, keyed the same as var.apigee_environments except keys with no type are omitted"
  value       = { for k, v in google_apigee_environment.apigee_environments : k => v.type if v.type != null && length(v.type) > 0 }
}

