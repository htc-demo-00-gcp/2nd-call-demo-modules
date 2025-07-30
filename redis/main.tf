terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
    }
  }
}

resource "random_id" "suffix" {
  byte_length = 8
}

resource "google_redis_instance" "redis" {
  name           = "${var.memorystore_instance_name}-${random_id.suffix.hex}"
  tier           = var.memorystore_tier
  memory_size_gb = var.memorystore_memory_size_gb
  region         = var.region
  redis_version  = var.memorystore_redis_version
}