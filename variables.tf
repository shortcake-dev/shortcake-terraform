variable "release_type" {
  type    = string
}

variable "deployment_name" {
  description = "Auxiliary suffix to append to release for resource names"
  type        = string
}

variable "backend_version" {
  type = string
}
