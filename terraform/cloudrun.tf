resource "google_cloud_run_service" "button" {
  name     = "button"
  location = "us-central1"

  template {
    spec {
      containers {
        image = "us-central1-docker.pkg.dev/gmalkov-button/button/button"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

# Allow public access to service
resource "google_cloud_run_service_iam_member" "allow-public" {
  location = google_cloud_run_service.button.location
  project = google_cloud_run_service.button.project
  service = google_cloud_run_service.button.name
  role = "roles/run.invoker"
  member = "allUsers"
}
