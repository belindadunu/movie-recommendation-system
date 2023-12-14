# based on https://developer.hashicorp.com/terraform/language/settings/backends/configuration

terraform {
  backend "s3" {
    organization = "C4_Final_Proj"

    workspaces {
      name = "c4-final-proj"
    }
  }
}
