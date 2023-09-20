variable "gcp_project_id" {
  default = "wodio-test-2"
}
variable "region" {
  default = "us-central1"
}
variable "zone" {
  default = "us-central1-c"
}
variable "vm_name" {
  default = "tset"
}
variable "vm_type" {
  default = "n1-standard-1"
}
variable "vm_image" {
  default = "ubuntu-os-cloud/ubuntu-2204-lts"
}
variable "vm_image_type" {
  default = "pd-standard"
}

variable "metadata_script" {
  default = "initscript_chef.sh"
}

variable "vm_disk_size" {
  default = 22
}

variable "vm_disk_type" {
  default = "pd-standard"
}
