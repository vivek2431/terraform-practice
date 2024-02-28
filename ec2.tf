provider "aws" {
    region = "us-east-1" #Select your desired aws region
}

resource "aws_instance" "this" {
  ami                     = "ami-0440d3b780d96b29d" # Specify an appropriate AMI ID 
  instance_type           = "t2.micro"
}
