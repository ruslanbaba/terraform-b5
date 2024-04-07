provider "aws" {
  region = "us-east-1"
}


# resource "aws_key_pair" "deployer" {
#   key_name   = "deployer-key"
#   public_key = file("~/.ssh/id_rsa.pub")
# }

# resource "aws_s3_bucket" "example" {
#   bucket_prefix = "hello-"
#   force_destroy = true
# }

