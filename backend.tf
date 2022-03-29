terraform {
  backend "s3" {
    bucket = "ta-delores-project-states-198769110116"
    key    = "talent-academy/labs/terraform.tfstates"
    dynamodb_table = "terraform-lock"
  }
}