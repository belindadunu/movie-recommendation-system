# The configuration for the `remote` backend
terraform {
  backend "remote" {
    organization = "C4_Final_Proj"

    workspaces {
      name = "default"
    }
  }
}

# An example resource that does nothing.
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}
