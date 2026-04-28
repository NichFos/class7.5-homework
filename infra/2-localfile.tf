# Generic text file that will be created by Terraform using the local provider. 
# https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file

resource "local_file" "favorite_food" {
  content  = "One of my favorite foods is hamachi nigiri with fresh wasabi."
  filename = "${path.module}/favoritefood.txt"
}