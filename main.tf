

resource "google_project_service" "run_api" {
  service = "run.googleapis.com"

  disable_on_destroy = true
}

resource "google_cloud_run_service" "simplify_service" {
  name     = var.name
  location = var.location

  template {
    spec {
      containers {
        image = var.image
      }
    }
  }

  depends_on = [google_project_service.run_api]
}