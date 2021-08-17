provider "aws" {
  region = var.aws_region
}


# Centralizar o arquivo de controle de estado do terraform
terraform {
  backend "s3" {
    bucket = "datalake-thiago-igti-edc"
    key    = "state/igti/edc/mod1/terraform.tfstate"
    region = "us-east-2"
  }
}
