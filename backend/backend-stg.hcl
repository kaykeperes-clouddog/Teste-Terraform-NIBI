bucket         = "terraform-state-stg-123456789012"
key            = "pipeline-test/terraform.tfstate"
region         = "us-east-1"
dynamodb_table = "terraform-lock-stg"
encrypt        = true