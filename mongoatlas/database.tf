# Create a project
resource "mongodbatlas_project" "project" {
  name   = "fiap-tc-project"
  org_id = var.mongo_atlas_org_id
}

resource "mongodbatlas_advanced_cluster" "cluster-mongodb" {
  project_id   = mongodbatlas_project.project.id
  name         = "fiap"
  cluster_type = "REPLICASET"

  replication_specs = [
    {
      region_configs = [
        {
          electable_specs = {
            instance_size = "M0"
          }
          provider_name         = "TENANT"
          backing_provider_name = "AWS"
          region_name           = "US_EAST_1"
          priority              = 7
        }
      ]
    }
  ]
}

# Liberando acesso IP
resource "mongodbatlas_project_ip_access_list" "allow_all" {
  project_id = mongodbatlas_project.project.id
  cidr_block = "0.0.0.0/0"
  comment    = "Acesso liberado"
}

resource "mongodbatlas_database_user" "admin" {
  project_id = mongodbatlas_project.project.id
  username   = var.mongo_deivimotorsdb_username
  password   = var.mongo_deivimotorsdb_password
  auth_database_name = "admin"

  roles {
    role_name     = "readWriteAnyDatabase"
    database_name = "admin"
  }
}