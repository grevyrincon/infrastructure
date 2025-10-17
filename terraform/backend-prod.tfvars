bucket = "terraform-state-bucket-eks-cluster"
key    = "prod/terraform.tfstate"
region = "us-east-1"
dynamodb_table = "terraform-locks"
encrypt = true
