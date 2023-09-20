terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.3.0"
    }
  }
}
provider "google" {
  credentials = file("../../../testprojectterraform.json")
  project = var.gcp_project_id
  region = var.region
  zone = var.zone
}