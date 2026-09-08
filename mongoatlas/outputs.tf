output "standard" {
  value = mongodbatlas_advanced_cluster.cluster-mongodb.connection_strings.standard
}

output "standard_srv" {
  value = mongodbatlas_advanced_cluster.cluster-mongodb.connection_strings.standard_srv
}

