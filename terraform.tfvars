vms = {
  "Tech-DNS" = {
    vm_id       = 100
    vm_name     = "tech-dns"
    target_node = "prox"
    agent       = 0
    cores       = 1
    sockets     = 2
    memory      = 4096
    clone       = "debian12-cloudinit"
    desc        = "Technitium DNS Server"
    nameservers = ["192.168.1.4", "9.9.9.9"]
    ip_address  = "192.168.1.4/24"
    gateway     = "192.168.1.1"
    disk_type   = "disk"
    disk_size   = 100
    disk_slot   = "scsi0"
    bridge      = "vmbr2"
  }

  "The Dock" = {
    vm_id       = 102
    vm_name     = "the-dock"
    target_node = "prox"
    agent       = 0
    cores       = 2
    sockets     = 2
    memory      = 16384
    clone       = "debian12-cloudinit"
    desc        = "Docker Host"
    nameservers = ["192.168.1.4", "9.9.9.9"]
    ip_address  = "192.168.1.252/24"
    gateway     = "192.168.1.1"
    disk_type   = "disk"
    disk_size   = 500
    disk_slot   = "scsi0"
    bridge      = "vmbr2"
  }

  "Immich" = {
    vm_id       = 107
    vm_name     = "immich"
    target_node = "prox"
    agent       = 0
    cores       = 2
    sockets     = 2
    memory      = 4096
    clone       = "debian12-cloudinit"
    desc        = "immich-photo Docker host"
    nameservers = ["192.168.1.4", "9.9.9.9"]
    ip_address  = "192.168.1.248/24"
    gateway     = "192.168.1.1"
    disk_type   = "disk"
    disk_size   = 3000
    disk_slot   = "scsi0"
    bridge      = "vmbr2"
  }

}