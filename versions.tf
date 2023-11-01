terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.8.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.17.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.52.0"
    }
  }
   backend "s3" {
    bucket = "s3-terraform-statefile-as5.1.1.2"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
  required_version = "~> 1.3"
}
