bucket         = "roboriya-backend-state-prod"
  key            = "terraform_multi_env/prod/terraform.tfstate"  # path where it needs to be stored
  region         = "us-east-1"
  dynamodb_table = "roboriya-state-lock-prod"