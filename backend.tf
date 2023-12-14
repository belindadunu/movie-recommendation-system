# based on https://developer.hashicorp.com/terraform/language/settings/backends/configuration

terraform {
  backend "s3" {
    bucket = "c4-kura-final-proj"
    key    = "c4-kura-final-proj/terraform/terraform.tfstate"
    region = "us-east-1"
  }
}