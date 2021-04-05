//--------------------------------------------------------------------
// Variables
variable "compute_instance_project" {}

//--------------------------------------------------------------------
// Modules
module "compute_instance" {
  source  = "app.terraform.io/Benchmark/compute_instance/google"
  version = "0.0.8"
  amount = 1
  image = "ubuntu-os-cloud/ubuntu-2004-lts"
  name_prefix = "telus"
  project = var.compute_instance_project
  network = "manage-vpc"
  subnetwork = "manage-subnet-01"
  zone = "us-east1-b"
}
