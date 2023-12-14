# based on https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository#encryption_configuration

resource "aws_ecr_repository" "d10_final" {
  name                 = "d10-repo"
  image_tag_mutability = "MUTABLE" # Can be modified

  image_scanning_configuration {
    scan_on_push = true #  Indicates whether images are scanned after being pushed to the repo
  }
}