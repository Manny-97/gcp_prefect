provider "google" {
  project     = var.project_name
  region      = var.project_region
  zone        = var.project_zone
  credentials = file(var.project_cred_path)
}

resource "google_storage_bucket" "gcp_project_bucket" {
  name          = var.bucket_name
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}