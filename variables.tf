variable "datacenter" {
  description = "The Datacenter where the instance will be deployed."
  type        = string
  default     = "sjc04"
}

variable "node_count" {
  description = "The number of instances to deploy."
  type        = string
  default     = "1"
}

variable "os_reference_code" {
  description = "The Operating System for the instance."
  type        = string
  default     = "UBUNTU_18_64"
}

variable "flavor" {
  description = "The size / flavor of the instance."
  type        = string
  default     = "BL2_2X4X100"
}

variable "domain" {
  description = "Domain name for instance."
  type        = string
  default     = "cdetesting.com"
}

