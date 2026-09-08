terraform {
  backend "s3" {
    bucket = "tfstate-infra-deivi-motors"
    key    = "deivi-motors-db/terraform.tfstate"
    region = "us-east-1"
  }
}