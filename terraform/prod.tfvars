cluster_name = "api-cluster-prod"
instance_type = "t3.medium"
environment = "prod"
ecr_repo_name = "python-api-prod-repo"
node_max_size = 10
vpc_cidr = "10.0.0.0/16"
tags = {
  Environment = "prod"
  Terraform = "true"
  Project = "python-api"
  owner = "Grevy"
}
