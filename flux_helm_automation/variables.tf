variable "region" {
  type        = string
  description = "Default Region For Terraform"
}

variable "namespace" {
  type        = string
  description = "Name of the application namespace"
}

variable "image" {
  type        = string
  description = "Name of the flux image"
}

variable "memcache_image" {
  type        = string
  description = "Name of the memcache_image image"
}

variable "backend_bucket_name" {
  type        = string
  description = "Bucket Name for terraform backend"
}

variable "branch" {
  type        = string
  description = "Branch which flux will be pointed"
}
