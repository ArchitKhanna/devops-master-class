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

  count = 3
  name  = "${var.iam_user_name_prefix}_${count.index}"

}
