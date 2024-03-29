provider "google" {
  project = var.project_id
  region  = var.region
}

data "google_compute_zones" "this" {
  region  = var.region
  project = var.project_id
}

locals {
  type   = ["public", "private"]
  zones = data.google_compute_zones.this.names
}