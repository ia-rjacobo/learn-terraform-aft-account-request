module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-internal+testing-org-sb1@inductiveautomation.com"
    AccountName               = "sandbox-aft-1"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "rjacobo@inductiveautomation.com"
    SSOUserFirstName          = "Rick"
    SSOUserLastName           = "Jacobo"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
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
