resource "aws_cognito_user_pool" "pool-1" {
  name                          = "${var.name}"
  username_attributes           = "${var.username_attributes}"
  auto_verified_attributes      = "${var.auto_verified_attributes}"
  device_configuration          = "${var.device_configuration}"
  email_configuration           = "${var.email_configuration}"
  email_verification_subject    = "${var.email_verification_subject}"
  email_verification_message    = "${var.email_verification_message}"
  sms_verification_message      = "${var.sms_verification_message}"
  lambda_config                 = "${var.lambda_config}"
  password_policy               = [{
    require_uppercase                = "${var.require_uppercase}"
    require_lowercase                = "${var.require_lowercase}"
    require_numbers                  = "${var.require_numbers}"
    require_symbols                  = "${var.require_symbols}"
    minimum_length                   = "${var.minimum_length}"
    #temporary_password_validity_days = "${var.temporary_password_validity_days}"                           
  }]
  schema                        = "${var.schema}"
  mfa_configuration             = "${var.mfa_configuration}"
  sms_configuration             = "${var.sms_configuration}"
  sms_authentication_message    = "${var.sms_authentication_message}"
  user_pool_add_ons             = "${var.user_pool_add_ons}"
  verification_message_template = "${var.verification_message_template}"
  tags                          = "${var.tags}"
  admin_create_user_config = [{
    allow_admin_create_user_only = "${var.allow_admin_create_user_only}"
    invite_message_template      = "${var.invite_message_template}"
    unused_account_validity_days = "${var.unused_account_validity_days}"
 }]
}
