//--------------------------------------------------------------------
// Modules
module "compute_instance" {
  source  = "app.terraform.io/Benchmark/compute_instance/google"
  version = "0.0.4"
  subnetwork   = "subnet-01"
  zone         = "us-east1-b"
  tags = "ssh"
  machine_type = "n1-standard-1"
  amount = 1
  image = "ubuntu-20.04-focal-v20210325"
  name_prefix = "telus"
}
