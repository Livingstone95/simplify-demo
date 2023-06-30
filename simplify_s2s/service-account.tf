## this enables the Cloud Identity API service for our GCP project.
resource "google_project_service" "cloud_identity" {
  service = var.service_identity

  disable_on_destroy = false
}

## this enables the Cloud Run API service for our GCP project.
resource "google_project_service" "run" {
  service = var.service_run

  disable_on_destroy = false
}

# this creates the service account for the Cloud run (identity) API service 
resource "google_service_account" "identity_simplify" {
  account_id   = var.account_id_identity
  display_name = "segun-Cloud-Identity"
  description  = "this will be used by the cloud run (identity) private service to call the cloud run private service"
}

# this creates the service account for the Cloud Run API service 
resource "google_service_account" "run_simplify" {
  account_id   = var.account_id_run
  display_name = "segun-run-sa"
  description  = "this will be used by the cloud run private service to call the cloud run (identity) private service"
}