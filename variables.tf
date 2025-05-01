 variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "eastus"
}

variable "allowed_ssh_ip" {
  description = "Public IP allowed to SSH (e.g., your IP)"
  type        = string
}