variable "project_id" {
  description = "Project ID for the Google Cloud Platform"
  type        = string
}

variable "region" {
  description = "Region for the Google Cloud Platform"
  type        = string
}

variable "memorystore_instance_name" {
  description = "Name of the Memorystore Redis instance"
  type        = string
}

variable "memorystore_tier" {
  description = "Tier of the Memorystore Redis instance"
  type        = string
}

variable "memorystore_memory_size_gb" {
  description = "Memory size (GB) of the Memorystore Redis instance"
  type        = number
}

variable "memorystore_redis_version" {
  description = "Redis version of the Memorystore Redis instance"
  type        = string
}