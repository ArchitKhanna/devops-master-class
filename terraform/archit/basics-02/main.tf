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
  name  = "my_tf_user_${count.index}"

}
