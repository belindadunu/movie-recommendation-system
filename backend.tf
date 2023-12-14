# based on https://developer.hashicorp.com/terraform/language/settings/backends/configuration

terraform {
  backend "s3" {
    bucket = "kura-c4-final-proj"
    key    = "kura-c4-final-proj/terraform/terraform.tfstate"
    region = "us-east-1"
  }
}