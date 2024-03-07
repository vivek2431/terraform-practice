provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "vivek" {
  instance_type ="t2.micro"
  ami = "ami-0f403e3180720dd7e"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "kab-dem-zyx"
}

resource "aws_dynamodb_table" "teraform_lock" {
  name = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
}


  
