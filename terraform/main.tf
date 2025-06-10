module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-internal+testing-org-sb2@inductiveautomation.com"
    AccountName               = "sandbox-aft--2"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "rjacobo@inductiveautomation.com"
    SSOUserFirstName          = "Rick"
    SSOUserLastName           = "Jacobo"
  }

  account_tags = {
    "TechnicalContact" = "Rick Jacobo"
    "AdministrativeContact" = "Rick Jacobo"
    "Division" = "Cloud"
    "Description" = "Sandbox 2"
    "AccountName" = "Sandbox 2"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
