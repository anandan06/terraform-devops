module "ecr" {
  source        = "../ecr"
  ecr_repo_name = var.ecr_repo_name
}
