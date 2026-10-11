variable "apigee_environments" {
  description = <<EOT
Map of apigee_environments, attributes below
Required:
    - name
    - org_id
Optional:
    - api_proxy_type
    - deletion_policy
    - deployment_type
    - description
    - display_name
    - forward_proxy_uri
    - type
    - client_ip_resolution_config (block):
        - header_index_algorithm (optional, block):
            - ip_header_index (required)
            - ip_header_name (required)
    - node_config (block):
        - max_node_count (optional)
        - min_node_count (optional)
    - properties (block):
        - property (optional, block):
            - name (optional)
            - value (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name              = string
    org_id            = string
    api_proxy_type    = optional(string)
    deletion_policy   = optional(string)
    deployment_type   = optional(string)
    description       = optional(string)
    display_name      = optional(string)
    forward_proxy_uri = optional(string)
    type              = optional(string)
    client_ip_resolution_config = optional(object({
      header_index_algorithm = optional(object({
        ip_header_index = number
        ip_header_name  = string
      }))
    }))
    node_config = optional(object({
      max_node_count = optional(string)
      min_node_count = optional(string)
    }))
    properties = optional(object({
      property = optional(list(object({
        name  = optional(string)
        value = optional(string)
      })))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

