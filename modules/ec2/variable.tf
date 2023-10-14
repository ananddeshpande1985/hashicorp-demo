variable "service_name" {
  type = string
}

variable "common_tags" {
  type = map(list(string))
}
variable "name_prefix" {
  type = string
}
variable "environment_prefix" {
  type = string
}