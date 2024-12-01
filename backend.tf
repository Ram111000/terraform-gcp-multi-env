terraform {
  backend "remote" {
    organization = "mygcp_new_org"  # Replace with your Terraform Cloud organization
    workspaces {
      name = "terraform-gcp-multi-env"  # Replace with your Terraform Cloud workspace
    }
  }
}
