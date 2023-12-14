# based on https://developer.hashicorp.com/terraform/language/settings/backends/configuration

terraform {
  cloud {
    organization = "C4_Final_Proj"

    workspaces {
      name = "c4-final-proj"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "kura-c4-final-proj"
    key    = "kura-c4-final-proj/terraform/terraform.tfstate"
    region = "us-east-1"
  }
}

