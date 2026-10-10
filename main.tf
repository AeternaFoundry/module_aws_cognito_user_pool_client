resource "aws_cognito_user_pool_client" "cognito_user_pool_clients" {
  for_each = var.cognito_user_pool_clients

  name                                          = each.value.name
  user_pool_id                                  = each.value.user_pool_id
  region                                        = each.value.region
  refresh_token_validity                        = each.value.refresh_token_validity
  read_attributes                               = each.value.read_attributes
  prevent_user_existence_errors                 = each.value.prevent_user_existence_errors
  logout_urls                                   = each.value.logout_urls
  id_token_validity                             = each.value.id_token_validity
  generate_secret                               = each.value.generate_secret
  explicit_auth_flows                           = each.value.explicit_auth_flows
  enable_token_revocation                       = each.value.enable_token_revocation
  enable_propagate_additional_user_context_data = each.value.enable_propagate_additional_user_context_data
  default_redirect_uri                          = each.value.default_redirect_uri
  callback_urls                                 = each.value.callback_urls
  auth_session_validity                         = each.value.auth_session_validity
  allowed_oauth_scopes                          = each.value.allowed_oauth_scopes
  allowed_oauth_flows_user_pool_client          = each.value.allowed_oauth_flows_user_pool_client
  allowed_oauth_flows                           = each.value.allowed_oauth_flows
  access_token_validity                         = each.value.access_token_validity
  supported_identity_providers                  = each.value.supported_identity_providers
  write_attributes                              = each.value.write_attributes

  dynamic "analytics_configuration" {
    for_each = each.value.analytics_configuration != null ? each.value.analytics_configuration : []
    content {
      application_arn  = analytics_configuration.value.application_arn
      application_id   = analytics_configuration.value.application_id
      external_id      = analytics_configuration.value.external_id
      role_arn         = analytics_configuration.value.role_arn
      user_data_shared = analytics_configuration.value.user_data_shared
    }
  }

  dynamic "refresh_token_rotation" {
    for_each = each.value.refresh_token_rotation != null ? each.value.refresh_token_rotation : []
    content {
      feature                    = refresh_token_rotation.value.feature
      retry_grace_period_seconds = refresh_token_rotation.value.retry_grace_period_seconds
    }
  }

  dynamic "token_validity_units" {
    for_each = each.value.token_validity_units != null ? each.value.token_validity_units : []
    content {
      access_token  = token_validity_units.value.access_token
      id_token      = token_validity_units.value.id_token
      refresh_token = token_validity_units.value.refresh_token
    }
  }
}

