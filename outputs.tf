output "cognito_user_pool_clients_id" {
  description = "Map of id values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cognito_user_pool_clients_access_token_validity" {
  description = "Map of access_token_validity values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.access_token_validity if v.access_token_validity != null }
}
output "cognito_user_pool_clients_allowed_oauth_flows" {
  description = "Map of allowed_oauth_flows values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.allowed_oauth_flows if v.allowed_oauth_flows != null && length(v.allowed_oauth_flows) > 0 }
}
output "cognito_user_pool_clients_allowed_oauth_flows_user_pool_client" {
  description = "Map of allowed_oauth_flows_user_pool_client values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.allowed_oauth_flows_user_pool_client if v.allowed_oauth_flows_user_pool_client != null }
}
output "cognito_user_pool_clients_allowed_oauth_scopes" {
  description = "Map of allowed_oauth_scopes values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.allowed_oauth_scopes if v.allowed_oauth_scopes != null && length(v.allowed_oauth_scopes) > 0 }
}
output "cognito_user_pool_clients_analytics_configuration" {
  description = "Map of analytics_configuration values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.analytics_configuration if v.analytics_configuration != null && length(v.analytics_configuration) > 0 }
}
output "cognito_user_pool_clients_auth_session_validity" {
  description = "Map of auth_session_validity values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.auth_session_validity if v.auth_session_validity != null }
}
output "cognito_user_pool_clients_callback_urls" {
  description = "Map of callback_urls values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.callback_urls if v.callback_urls != null && length(v.callback_urls) > 0 }
}
output "cognito_user_pool_clients_client_secret" {
  description = "Map of client_secret values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.client_secret if v.client_secret != null && length(v.client_secret) > 0 }
  sensitive   = true
}
output "cognito_user_pool_clients_default_redirect_uri" {
  description = "Map of default_redirect_uri values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.default_redirect_uri if v.default_redirect_uri != null && length(v.default_redirect_uri) > 0 }
}
output "cognito_user_pool_clients_enable_propagate_additional_user_context_data" {
  description = "Map of enable_propagate_additional_user_context_data values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.enable_propagate_additional_user_context_data if v.enable_propagate_additional_user_context_data != null }
}
output "cognito_user_pool_clients_enable_token_revocation" {
  description = "Map of enable_token_revocation values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.enable_token_revocation if v.enable_token_revocation != null }
}
output "cognito_user_pool_clients_explicit_auth_flows" {
  description = "Map of explicit_auth_flows values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.explicit_auth_flows if v.explicit_auth_flows != null && length(v.explicit_auth_flows) > 0 }
}
output "cognito_user_pool_clients_generate_secret" {
  description = "Map of generate_secret values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.generate_secret if v.generate_secret != null }
}
output "cognito_user_pool_clients_id_token_validity" {
  description = "Map of id_token_validity values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.id_token_validity if v.id_token_validity != null }
}
output "cognito_user_pool_clients_logout_urls" {
  description = "Map of logout_urls values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.logout_urls if v.logout_urls != null && length(v.logout_urls) > 0 }
}
output "cognito_user_pool_clients_name" {
  description = "Map of name values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cognito_user_pool_clients_prevent_user_existence_errors" {
  description = "Map of prevent_user_existence_errors values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.prevent_user_existence_errors if v.prevent_user_existence_errors != null && length(v.prevent_user_existence_errors) > 0 }
}
output "cognito_user_pool_clients_read_attributes" {
  description = "Map of read_attributes values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.read_attributes if v.read_attributes != null && length(v.read_attributes) > 0 }
}
output "cognito_user_pool_clients_refresh_token_rotation" {
  description = "Map of refresh_token_rotation values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.refresh_token_rotation if v.refresh_token_rotation != null && length(v.refresh_token_rotation) > 0 }
}
output "cognito_user_pool_clients_refresh_token_validity" {
  description = "Map of refresh_token_validity values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.refresh_token_validity if v.refresh_token_validity != null }
}
output "cognito_user_pool_clients_region" {
  description = "Map of region values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cognito_user_pool_clients_supported_identity_providers" {
  description = "Map of supported_identity_providers values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.supported_identity_providers if v.supported_identity_providers != null && length(v.supported_identity_providers) > 0 }
}
output "cognito_user_pool_clients_token_validity_units" {
  description = "Map of token_validity_units values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.token_validity_units if v.token_validity_units != null && length(v.token_validity_units) > 0 }
}
output "cognito_user_pool_clients_user_pool_id" {
  description = "Map of user_pool_id values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.user_pool_id if v.user_pool_id != null && length(v.user_pool_id) > 0 }
}
output "cognito_user_pool_clients_write_attributes" {
  description = "Map of write_attributes values across all cognito_user_pool_clients, keyed the same as var.cognito_user_pool_clients"
  value       = { for k, v in aws_cognito_user_pool_client.cognito_user_pool_clients : k => v.write_attributes if v.write_attributes != null && length(v.write_attributes) > 0 }
}

