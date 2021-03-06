variable "service_name" {
  type = string
}

variable "region" {
  type = string
}

variable "image" {
  type = string
}

variable "sql_instance" {
  type = object({
    connection_name = string
  })
}
