variable "vms" {
  description = "Map of VM configurations"
  type = map(object({
    vm_id       = number
    vm_name     = string
    target_node = string
    agent       = number
    cores       = number
    sockets     = number
    memory      = number
    clone       = string
    desc        = string
    nameservers = list(string)
    ip_address  = string
    gateway     = string
    disk_type   = string
    disk_size   = number
    disk_slot   = string
    bridge      = string
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
