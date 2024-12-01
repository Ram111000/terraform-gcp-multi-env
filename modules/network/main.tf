resource "google_compute_network" "vpc_network" {
  name = var.network_name
}

resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.cidr
  region        = us-west1  # Add region for subnets
  network       = google_compute_network.vpc_network.id
}
