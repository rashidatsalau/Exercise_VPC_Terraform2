terraform {
  backend "s3" {
    bucket = "ta-terraform-tfstates-163065498600"
    key    = "sprint1/week2/exercise1-terraform/terraform.tfstates"
    dynamodb_table = "terraform-lock"
  }
}

