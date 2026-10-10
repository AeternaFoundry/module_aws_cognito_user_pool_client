variable "cognito_user_pool_clients" {
  description = <<EOT
Map of cognito_user_pool_clients, attributes below
Required:
    - name
    - user_pool_id
Optional:
    - access_token_validity
    - allowed_oauth_flows
    - allowed_oauth_flows_user_pool_client
    - allowed_oauth_scopes
    - auth_session_validity
    - callback_urls
    - default_redirect_uri
    - enable_propagate_additional_user_context_data
    - enable_token_revocation
    - explicit_auth_flows
    - generate_secret
    - id_token_validity
    - logout_urls
    - prevent_user_existence_errors
    - read_attributes
    - refresh_token_validity
    - region
    - supported_identity_providers
    - write_attributes
    - analytics_configuration (block):
        - application_arn (optional)
        - application_id (optional)
        - external_id (optional)
        - role_arn (optional)
        - user_data_shared (optional)
    - refresh_token_rotation (block):
        - feature (required)
        - retry_grace_period_seconds (optional)
    - token_validity_units (block):
        - access_token (optional)
        - id_token (optional)
        - refresh_token (optional)
EOT

  type = map(object({
    name                                          = string
    user_pool_id                                  = string
    region                                        = optional(string)
    refresh_token_validity                        = optional(number)
    read_attributes                               = optional(set(string))
    prevent_user_existence_errors                 = optional(string)
    logout_urls                                   = optional(set(string))
    id_token_validity                             = optional(number)
    generate_secret                               = optional(bool)
    explicit_auth_flows                           = optional(set(string))
    enable_token_revocation                       = optional(bool)
    enable_propagate_additional_user_context_data = optional(bool)
    default_redirect_uri                          = optional(string)
    callback_urls                                 = optional(set(string))
    auth_session_validity                         = optional(number)
    allowed_oauth_scopes                          = optional(set(string))
    allowed_oauth_flows_user_pool_client          = optional(bool)
    allowed_oauth_flows                           = optional(set(string))
    access_token_validity                         = optional(number)
    supported_identity_providers                  = optional(set(string))
    write_attributes                              = optional(set(string))
    analytics_configuration = optional(list(object({
      application_arn  = optional(string)
      application_id   = optional(string)
      external_id      = optional(string)
      role_arn         = optional(string)
      user_data_shared = optional(bool)
    })))
    refresh_token_rotation = optional(list(object({
      feature                    = string
      retry_grace_period_seconds = optional(number)
    })))
    token_validity_units = optional(list(object({
      access_token  = optional(string)
      id_token      = optional(string)
      refresh_token = optional(string)
    })))
  }))
}

