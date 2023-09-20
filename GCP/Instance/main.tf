resource "google_compute_address" "static" {
  name = "ipv4-address"
}

resource "google_compute_instance" "default" {
  name         = var.vm_name
  machine_type = var.vm_type

  tags = ["vm", "tf", "http-server", "https-server"]

  boot_disk {
    initialize_params {
      image = var.vm_image
      type = var.vm_disk_type
      size = var.vm_disk_size
      
    }
  }
  network_interface {
    network = "default"
    subnetwork = "default"
    access_config {
      nat_ip = google_compute_address.static.address
    }
  }

  metadata = {
    vm = "tf"
  }

  metadata_startup_script = file(var.metadata_script)

}