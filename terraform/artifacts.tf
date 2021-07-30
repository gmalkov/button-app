resource "google_artifact_registry_repository" "button-repo" {
  provider = google-beta

  location = "us-central1"
  repository_id = "button"
  description = "Button app Docker repo"
  format = "DOCKER"
}
