terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.9.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "ecr" {
  source        = "./modules/ecr"
  ecr_repo_name = var.ecr_repo_name
}

module "ecs" {
  source             = "./modules/ecs"
  ecr_repository_url = module.ecr.repository_url
  subnet_ids         = var.subnet_ids
  security_group_ids = var.security_group_ids
}

module "kms" {
  source      = "./modules/kms"
  default_tag = var.default_tag
}

module "secrets_manager" {
  source      = "./modules/secrets_manager"
  kms_key_id  = module.kms.kms_key_id
  default_tag = var.default_tag
}


module "rds" {
  source            = "./modules/rds"
  allocated_storage = var.allocated_storage
  engine            = var.engine
  engine_version    = var.engine_version
  instance_class    = var.instance_class
  default_tag       = var.default_tag
}
