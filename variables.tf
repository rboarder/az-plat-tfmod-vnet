variable "name" {
  description = "Name of the virtual network."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group the VNet is created in."
  type        = string
}

variable "location" {
  description = "Azure region, e.g. uksouth."
  type        = string
}

variable "address_space" {
  description = "CIDR ranges for the VNet, e.g. [\"10.10.0.0/16\"]."
  type        = list(string)
}

variable "subnets" {
  description = "Map of subnets to create. The map key becomes the subnet name."
  type = map(object({
    address_prefixes = list(string)
  }))
  default = {}
}

variable "tags" {
  description = "Tags applied to the VNet."
  type        = map(string)
  default     = {}
}
