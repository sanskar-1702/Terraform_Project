resource "aws_s3_bucket" "devops_state_bucket" {
    bucket = "devops-state-bucket001"
    
    tags = {
      name = "Devops-state-bucket"
    }
}

resource "aws_s3_bucket_versioning" "devops_state_bucket_versioning" {
  bucket = aws_s3_bucket.devops_state_bucket.id
    versioning_configuration {
        status = "Enabled"
    }
}