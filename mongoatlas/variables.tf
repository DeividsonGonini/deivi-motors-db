variable "mongo_atlas_public_key" {
  description = "Public Key do MongoDB Atlas"
  sensitive   = true
}

variable "mongo_atlas_private_key" {
  description = "Private Key do MongoDB Atlas"
  sensitive   = true
}


variable "mongo_atlas_org_id" {
  description = "Organization ID do MongoDB Atlas"
  sensitive   = true
}

variable "mongo_deivimotorsdb_username" {
  description = "Usuario do banco de dados DeiviMotorsDB"
  sensitive   = true
}

variable "mongo_deivimotorsdb_password" {
  description = "Password do banco de dados DeiviMotorsDB"
  sensitive   = true
}