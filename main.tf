resource "google_apigee_environment" "apigee_environments" {
  for_each = var.apigee_environments

  name              = each.value.name
  org_id            = each.value.org_id
  api_proxy_type    = each.value.api_proxy_type
  deletion_policy   = each.value.deletion_policy
  deployment_type   = each.value.deployment_type
  description       = each.value.description
  display_name      = each.value.display_name
  forward_proxy_uri = each.value.forward_proxy_uri
  type              = each.value.type

  dynamic "client_ip_resolution_config" {
    for_each = each.value.client_ip_resolution_config != null ? [each.value.client_ip_resolution_config] : []
    content {
      dynamic "header_index_algorithm" {
        for_each = client_ip_resolution_config.value.header_index_algorithm != null ? [client_ip_resolution_config.value.header_index_algorithm] : []
        content {
          ip_header_index = header_index_algorithm.value.ip_header_index
          ip_header_name  = header_index_algorithm.value.ip_header_name
        }
      }
    }
  }

  dynamic "node_config" {
    for_each = each.value.node_config != null ? [each.value.node_config] : []
    content {
      max_node_count = node_config.value.max_node_count
      min_node_count = node_config.value.min_node_count
    }
  }

  dynamic "properties" {
    for_each = each.value.properties != null ? [each.value.properties] : []
    content {
      dynamic "property" {
        for_each = properties.value.property != null ? properties.value.property : []
        content {
          name  = property.value.name
          value = property.value.value
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

