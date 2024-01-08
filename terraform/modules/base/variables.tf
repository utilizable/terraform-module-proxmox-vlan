# ./modules/../variables.tf

# MODULE - VARIABLES
# ------------------

variable "node_name" {
  type        = string
  description = "The name of the node."
}

variable "interface" {
  type        = string
  description = "The VLAN raw device."
}

variable "vlan" {
  type        = string
  description = "The VLAN tag."
}

variable "name" {
  type        = string
  description = "Name of the bridge."
}

variable "address" {
  type        = string
  description = "The interface IPv4/CIDR address."
}

