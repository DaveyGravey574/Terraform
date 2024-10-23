vms = {
  "vm1" = {
    vm_id       = 200
    vm_name     = "AD"
    target_node = "prox"
    agent       = 0
    cores       = 1
    sockets     = 2
    memory      = 4096
    clone       = "debian12-cloudinit"
    desc        = "Active Directory"
    nameservers = ["192.168.1.4", "9.9.9.9"]
    ip_address  = "192.168.1.230/24"
    gateway     = "192.168.1.1"
    disk_type   = "disk"
    disk_size   = 32
    disk_slot   = "scsi0"
    bridge      = "vmbr2"
  }

  "vm2" = {
    vm_id       = 201
    vm_name     = "dns-server"
    target_node = "prox"
    agent       = 0
    cores       = 1
    sockets     = 2
    memory      = 4096
    clone       = "debian12-cloudinit"
    desc        = "DNS Server"
    nameservers = ["192.168.1.4", "9.9.9.9"]
    ip_address  = "192.168.1.231/24"
    gateway     = "192.168.1.1"
    disk_type   = "disk"
    disk_size   = 32
    disk_slot   = "scsi0"
    bridge      = "vmbr2"
  }

  "vm3" = {
    vm_id       = 202
    vm_name     = "Docker"
    target_node = "prox"
    agent       = 0
    cores       = 1
    sockets     = 2
    memory      = 4096
    clone       = "debian12-cloudinit"
    desc        = "Host running Docker Containers"
    nameservers = ["192.168.1.4", "9.9.9.9"]
    ip_address  = "192.168.1.232/24"
    gateway     = "192.168.1.1"
    disk_type   = "disk"
    disk_size   = 32
    disk_slot   = "scsi0"
    bridge      = "vmbr2"
  }

}