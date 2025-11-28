provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Environment = var.environment
      Project     = var.project
      Customer    = var.customer
    }
  }
}

module "api_lambda" {
  source = "./modules/api-lambda"
  
  environment = var.environment
  project     = var.project
  customer    = var.customer
  region      = var.region
}