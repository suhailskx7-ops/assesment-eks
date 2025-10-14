variable "aws_region" {
  default = "us-east-1"
}

variable "project_name" {
  default = "hello-web"
}

variable "vpc_id" {
  description = "VPC ID where EKS will be deployed"
}

variable "subnets" {
  description = "List of subnet IDs for EKS nodes"
  type        = list(string)
}