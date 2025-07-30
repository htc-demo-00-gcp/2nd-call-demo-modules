variable "namespace" {
  description = "The Kubernetes namespace where the service account will be created."
  type        = string
}

variable "gcp_service_account_email" {
  description = "The email of the GCP service account to associate with the Kubernetes service account."
  type        = string
}
