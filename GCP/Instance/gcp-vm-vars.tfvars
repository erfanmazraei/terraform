#terraform plan -var-file=variable.tfvars
gcp_project_id = "gcp_project_id"
service_account_email = "service_account_email"
region =  "us-central1"
zone = "us-central1-c"
vm_name = "tf-gcp-vm"
vm_type = "n1-standard-1"
vm_image = "centos-cloud/centos-7" or "ubuntu-os-cloud/ubuntu-2204-lts"
vm_image_type = "pd-standard"