resource "proxmox_lxc" "advanced_features" {

    for_each = var.lxc

    vmid             = each.value.id
    hostname         = each.value.lxc_name
    target_node      = each.value.target_node
    description      = each.value.description
    tags             = each.value.tags
    ostemplate       = each.value.ostemplate
    unprivileged     = each.value.unprivileged
    cores            = each.value.cores
    memory           = each.value.memory
    nameserver       = each.value.nameservers
    searchdomain     = each.value.searchdomain
    start            = true 
    password         = var.root_password
    ssh_public_keys  = var.ssh_public_key
    
    network {
        name = "enp6s1"
        ip = each.value.ip_address
        bridge = each.value.bridge
        ip6 = "manual"
        gw = var.gateway
        firewall = false

    }

    rootfs {
    storage = "VM-Store"
    size    = "${each.value.storage_size}G"
  }



}