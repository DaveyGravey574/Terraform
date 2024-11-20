variable "lxc" {
  description = "Map of LXC configurations"
  type = map(object({
    id           = number
    lxc_name     = string
    target_node  = string
    description  = string
    tags         = string
    ostemplate   = string
    unprivileged = bool
    cores        = number
    memory       = number
    nameservers  = string
    searchdomain = string
    ip_address   = string
    bridge       = string
    storage_size = number
  }))
}

variable "gateway" {
  description = "The gateway IP address."
  type        = string
  default     = "192.168.1.1"
}

variable "root_password" {
  description = "The root password for the VM."
  type        = string
  sensitive   = true
 
}

variable "ssh_public_key" {
  description = "The SSH public key for the root user."
  type        = string
  sensitive   = true
}
