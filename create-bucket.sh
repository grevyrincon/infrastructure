# Crear bucket S3
aws s3api create-bucket \
  --bucket terraform-state-bucket-eks-cluster \
  --region us-east-1

# Crear tabla DynamoDB para el lock
aws dynamodb create-table \
  --table-name terraform-locks \
  --attribute-definitions AttributeName=LockID,AttributeType=S \
  --key-schema AttributeName=LockID,KeyType=HASH \
  --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5 \
  --region us-east-1