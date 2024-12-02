module "network" {
  source       = "../../modules/network"
  network_name = "gcpvpc"         # Your actual VPC name
  subnet_name  = "gcpsubnet"      # Your actual subnet name
  cidr         = "10.128.0.7"   # Your actual CIDR block
  region       = "us-central1-a"       # Your actual region
}

resource "google_compute_instance" "vm_instance" {
  name         = "dev-instance"
  machine_type = "e2-medium"
  zone         = "us-west1-a"  # Adjust zone based on your region
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network    = module.network.network_id
    subnetwork = module.network.subnet_id
  }
}

