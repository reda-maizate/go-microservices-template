################ Elastic Container Registry ################
locals {
  ecr_image_tag          = "latest"
  account_id             = data.aws_caller_identity.current.account_id
  auth_service_repo_name = "auth-service-repo"
}

data "aws_caller_identity" "current" {}

data "aws_ecr_authorization_token" "token" {}

resource "aws_ecrpublic_repository" "auth_service_repo" {
  repository_name = local.auth_service_repo_name
}