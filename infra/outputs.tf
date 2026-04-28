# Output for our VPC name. Outputs are a way to display attritbutes of resources after they are deployed. 
# These can be used to pass information between a root and child module. 
# https://developer.hashicorp.com/terraform/tutorials/configuration-language/outputs
output "vpc_name" {
  value = google_compute_network.week7_vpc.name 
}

output "file_content" {
  value = local_file.favorite_food.content
}