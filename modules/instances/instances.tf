resource "google_compute_instance" "tf-instance-1" {
  name         = "tf-instance-1"
  machine_type = "n1-standard-2"
  zone = "us-east1-c"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "tf-vpc-412824"
    subnetwork = "subnet-01"
  }

metadata_startup_script = <<-EOT
#!/bin/bash
EOT

allow_stopping_for_update = true
}

resource "google_compute_instance" "tf-instance-2" {
  name         = "tf-instance-2"
  machine_type = "n1-standard-2"
  zone = "us-east1-c"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "tf-vpc-412824"
    subnetwork = "subnet-02"
  }

metadata_startup_script = <<-EOT
#!/bin/bash
EOT

allow_stopping_for_update = true
}

# resource "google_compute_instance" "tf-instance-246553" {
#   name         = "tf-instance-246553"
#   machine_type = "n1-standard-2"
#   zone         = "us-east1-c"

#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-10"
#     }
#   }

#   network_interface {
#  network = "default"
#   }
# metadata_startup_script = <<-EOT
# #!/bin/bash
# EOT

# allow_stopping_for_update = true
# }

