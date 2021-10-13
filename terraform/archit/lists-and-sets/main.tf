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

  #count = length(var.names)
  #name  = var.names[count.index]
  for_each = toset(var.names)
  name     = each.value

}
