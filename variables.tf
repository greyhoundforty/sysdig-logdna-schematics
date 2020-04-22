variable "datacenter" {
  type = string
  default = "sjc04"
}

variable "node_count" {
  type    = string
  default = "1"
}

variable "os_reference_code" {
  type = string
  default = "UBUNTU_18_64"
}

variable "flavor_key_name" {
  type = string
  default = "BL2_2X4X100"
}

variable "domain" {
  type    = string
  default = "cdetesting.com"
}

