# infrastructure

![Version](https://img.shields.io/github/v/tag/grevyrincon/infrastructure?label=version)

This repository defines and automates the provisioning of **cloud infrastructure** using **Terraform** and **Jenkins**.  
It includes reusable Terraform configurations for deploying AWS resources, as well as scripts to set up supporting components like S3 buckets for backend state management.

---

## 📁 Project Structure

```bash
.
├── CHANGELOG.md              # Version history and release notes
├── Jenkinsfile               # Jenkins pipeline for infrastructure automation
├── README.md                 # Project documentation
├── create-bucket.sh          # Script to create an S3 bucket for Terraform state
└── terraform/                # Terraform configuration files
    ├── LICENSE.txt
    ├── backend-prod.tfvars   # Backend configuration variables (S3, DynamoDB)
    ├── main.tf               # Main infrastructure definition
    ├── outputs.tf            # Output variables after deployment
    ├── prod.tfvars           # Production environment variables
    ├── providers.tf          # Provider configuration (AWS)
    ├── terraform.tfstate     # Terraform state file
    ├── terraform.tfstate.backup
    └── variables.tf          # Input variable definitions
```
