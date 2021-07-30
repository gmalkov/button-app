module "project-services" {
  source  = "terraform-google-modules/project-factory/google//modules/project_services"
  version = "10.1.1"

  project_id = "gmalkov-button"

  activate_apis = [
    "artifactregistry.googleapis.com",
    "cloudresourcemanager.googleapis.com"
  ]
}
