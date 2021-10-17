terraform {
  backend "s3" {
    profile = "default"
    region  = "us-east-1"
    bucket  = "monitoring-tfstates"
    key     = "terraform.tfstate"
  }
}
