provider "google" {
  project = "gmalkov-button"
}

provider "google-beta" {
  project = "gmalkov-button"
}

terraform {
  # Comment out the below block for a local backend
  backend "gcs" {
    bucket = "gmalkov-button"
    prefix = "button"
  }
  required_version = "= 0.14.8"
  required_providers {
    google      = "~> 3.0"
    google-beta = "~> 3.0"
  }
}
