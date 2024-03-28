resource "aws_s3_bucket" "backend_s3" {
    bucket = "abhishek-tf-bucket"
      
}

resource "aws_s3_bucket_versioning" "backend_s3_versioning" {
  bucket = "aws_s3_bucket.backend_s3"
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "Statelock" {
  name = "state-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
  
}


/* terraform {
  backend "s3" {
    bucket = "abhishek-tf-bucket"
    key    = "State/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "state-lock"
  }
 } */
