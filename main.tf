resource "proxmox_vm_qemu" "Provision-VMs" {

    for_each = var.vms

    vmid             = each.value.vm_id
    name             = each.value.vm_name
    target_node      = each.value.target_node
    agent            = each.value.agent
    cores            = each.value.cores
    sockets          = each.value.sockets
    memory           = each.value.memory
    boot             = "order=scsi0"
    clone            = each.value.clone
    scsihw           = "virtio-scsi-single"
    vm_state         = "running"
    automatic_reboot = true
    desc             = each.value.desc
    
    # Cloud-Init configuration
    cicustom   = "vendor=local:snippets/qemu-guest-agent.yml" # /var/lib/vz/snippets/qemu-guest-agent.yml
    ciupgrade  = true
    nameserver = join(" ", each.value.nameservers)
    ipconfig0  = "ip=${each.value.ip_address},gw=${each.value.gateway},ip6=dhcp"
    skip_ipv6  = true
    ciuser     = "root"
    cipassword = var.root_password
    sshkeys    = var.ssh_public_key

    # Serial device for console display in Proxmox Dashboard
    serial {
        id = 0
    }
    
    # Disk for Cloud-init drive
    disk {
        storage = "VM-Store"
        type    = "cloudinit"
        size    = "2G"
        slot    = "scsi1"
    }

    # Disk for VM Storage
    disk {
        storage = "VM-Store"
        type    = each.value.disk_type
        size    = "${each.value.disk_size}G"
        slot    = each.value.disk_slot
    }
    
    # Network adapter settings
    network {
        bridge = each.value.bridge
        model  = "virtio"
    }
}