variable "project" {
  type        = string
  description = "GCP project ID"
}

variable "region" {
  type        = string
  description = "The main region where the resources are created"
}

variable "service_run" {
  type        = string
  description = "The name of the service cloud run"
}

variable "service_identity" {
  type        = string
  description = "The name of the cloud identity service"
}

variable "ingress" {
  type        = string
  description = "Provides the ingress settings for this Service"
}

variable "image_a" {
  type        = string
  description = "URL of the Container image in Google Container Registry or Google Artifact Registry"
}

variable "image_b" {
  type        = string
  description = "URL of the Container image in Google Container Registry or Google Artifact Registry"
}

variable "role_service_a" {
  type        = string
  description = "The role that should be applied"
}

variable "role_service_b" {
  type        = string
  description = "The role that should be applied"
}

variable "account_id_identity" {
  type        = string
  description = "account id used to generate the service account email address and a stable unique id"
}

variable "account_id_run" {
  type        = string
  description = "account id used to generate the service account email address and a stable unique id"
}

variable "service_a_name" {
  type        = string
  description = "Name of the Service"
}
variable "service_b_name" {
  type        = string
  description = "Name of the Service."
}
