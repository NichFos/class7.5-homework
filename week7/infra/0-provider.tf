# Defines providers for hashicorp/local and hashicorp/google.
# Google provider is used to create resources in GCP, local provider creates local files on our machine.

terraform {
  required_providers {
    google = {                                # https://registry.terraform.io/providers/hashicorp/google/latest
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
    local = {                                 # https://registry.terraform.io/providers/hashicorp/local/latest
      source = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "seir1-490201"
  region  = "us-central1"
}
# Google provider configured for my project. Deploys infrastructure in us-central1 (Iowa) region. 