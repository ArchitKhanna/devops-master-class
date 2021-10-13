terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "my_s3_bucket" {

    bucket = "archit-s3-bucket-02"
    versioning {
      enabled = true
    }

}
# ID: AKIA3ABTNARGKEPX7EET
# Pass: t3XOgJIPiYI4cQpZWyRkklbLtUaEMbtMDPrtCxqa
