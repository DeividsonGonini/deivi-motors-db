terraform {
  required_providers {
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "~> 2.0"
    }
  }
}

provider "mongodbatlas" {
  public_key = var.mongo_atlas_public_key
  private_key = var.mongo_atlas_private_key
}

