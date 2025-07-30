terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.3"
    }
  }
}

resource "random_id" "service_account_name" {
  byte_length = 8
}

resource "kubernetes_service_account" "service_account" {
  metadata {
    name = random_id.service_account_name.hex
    namespace = var.namespace

    annotations = {
      "iam.gke.io/gcp-service-account" = var.gcp_service_account_email
    }
  }
}
