output "network_id" {
  value = module.network.network_id
}

output "subnet_id" {
  value = module.network.subnet_id
}

output "instance_name" {
  value = google_compute_instance.vm_instance.name
}