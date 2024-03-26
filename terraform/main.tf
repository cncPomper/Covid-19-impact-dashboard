terraform {
  required_version = ">= 1.0"
  backend "local" {}
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  project     = var.project
  region      = var.region
  credentials = file(var.credentials)
}

resource "google_bigquery_dataset" "covid_project_dataset" {
  dataset_id = var.BQ_dataset_name
  location   = var.location
}

resource "google_storage_bucket" "covid_data_lake_bucket" {
  name     = "precise-rite-412717_235_project" # Concatenating DL bucket & Project name for unique naming
  location = var.region

  # Optional, but recommended settings:
  storage_class               = var.GCS_storage_class
  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30 // days
    }
  }

  force_destroy = true
}
