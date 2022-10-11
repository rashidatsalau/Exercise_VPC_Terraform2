terraform {
  backend "s3" {
    bucket = "ta-terraform-tfstates-339774688473"
    key    = "exercise1-terraform/terraform.tfstates"
    dynamodb_table = "terraform-lock"
  }
}

