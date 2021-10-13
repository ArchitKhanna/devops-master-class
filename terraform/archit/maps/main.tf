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

resource "aws_iam_user" "tf_iam_users" {

  for_each = var.usermaps
  name     = each.key
  tags = {
    "country" : each.value.country,
    "department" : each.value.department
  }

}
