resource "aws_s3_bucket" "states_bucket_terraform" {
    bucket = "ta-delores-project-states-198769110116"

    lifecycle {
      prevent_destroy = true
    }

    tags = {
        Name = "ta-delores-project-states"
        Environment = "Talent-Academy"
    }
}

resource "aws_s3_bucket_versioning" "version_my_bucket" {
  bucket = aws_s3_bucket.states_bucket_terraform.id

  versioning_configuration {
    status = "Enabled"
  }
}