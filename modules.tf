//--------------------------------------------------------------------
// Variables
variable "compute_instance_project" {}

//--------------------------------------------------------------------
// Modules
module "compute_instance" {
  source  = "app.terraform.io/Benchmark/compute_instance/google"
  version = "0.0.7"
  amount = 1
  image = "ubuntu-os-cloud/ubuntu-2004-lts"
  name_prefix = "telus"
  project = var.compute_instance_project
  network = "manage-vpc"
  subnetwork = "manage-subnet-01"
  subnetwork_project = var.compute_instance_project
  zone = "us-east1-b"
}
