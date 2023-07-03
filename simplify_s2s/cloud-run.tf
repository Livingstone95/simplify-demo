# this creates the first private cloud run service
resource "google_cloud_run_v2_service" "service_a" {
  name     = var.service_a_name
  location = var.region

  template {
    containers {
      image = var.image_a
      ports {
        container_port = 8001
      }

      env {
        name  = "URL"
        value = google_cloud_run_v2_service.service_b.uri
      }
    }
    service_account = google_service_account.identity_simplify.email
  }
}



# manages the IAM policy/permissions for the cloud run service
resource "google_cloud_run_v2_service_iam_member" "service_a_member" {
  project  = google_cloud_run_v2_service.service_a.project
  location = google_cloud_run_v2_service.service_a.location
  name     = google_cloud_run_v2_service.service_a.name
  role     = var.role_service_a
  member   = "allUsers" #"serviceAccount:${google_service_account.identity_simplify.email}"
}

# this creates the second private cloud run (identity) service
resource "google_cloud_run_v2_service" "service_b" {
  name     = var.service_b_name
  location = var.region

  template {
    containers {
      image = var.image_b
      ports {
        container_port = 8000
      }
    }
    service_account = google_service_account.run_simplify.email
  }
}

# manages the IAM policy/permissions for the cloud run (identity) service
resource "google_cloud_run_v2_service_iam_member" "service_b_member" {
  project  = google_cloud_run_v2_service.service_b.project
  location = google_cloud_run_v2_service.service_b.location
  name     = google_cloud_run_v2_service.service_b.name
  role     = var.role_service_b
  member   = "serviceAccount:${google_service_account.run_simplify.email}"
}