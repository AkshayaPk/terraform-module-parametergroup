variable "parameter_group_name" {
  description = "The parameter group name"
}

variable "parameter_group_description" {
  description = "The parameter group description"
}

variable "family" {
  description = "The family for the parameter group"
}

variable "parameters" {
  default = []
}

variable "tags" {
  type = map
  default = {
    "Name" = "Parameter Group for RDS"
  }
}