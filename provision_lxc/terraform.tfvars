lxc = {
    "piHole-test" = {
        id = 200
        lxc_name = "pihole-test"
        target_node = "prox"
        description = "value"
        tags = "pihole-test"
        ostemplate = "local:vztmpl/debian-12-standard_12.7-1_amd64.tar.zst"
        unprivileged = true
        cores = 1
        memory = 512
        nameservers = "192.168.1.4, 192.168.1.5, 192.168.1.6"
        searchdomain = "prod.davidingwersen.com"
        ip_address = "192.168.1.220/24"
        bridge = "vmbr2"
        storage_size = 8
    }

    "dns-test" = {
        id = 201
        lxc_name = "dns-test"
        target_node = "prox"
        description = "value"
        tags = "dns-test"
        ostemplate = "local:vztmpl/debian-12-standard_12.7-1_amd64.tar.zst"
        unprivileged = true
        cores = 1
        memory = 512
        nameservers = "192.168.1.4, 192.168.1.5, 192.168.1.6"
        searchdomain = "prod.davidingwersen.com"
        ip_address = "192.168.1.221/24"
        bridge = "vmbr2"
        storage_size = 9
    }

    "dhcp-test" = {
        id = 202
        lxc_name = "dhcp-test"
        target_node = "prox"
        description = "value"
        tags = "dhcp-test"
        ostemplate = "local:vztmpl/debian-12-standard_12.7-1_amd64.tar.zst"
        unprivileged = true
        cores = 1
        memory = 512
        nameservers = "192.168.1.4, 192.168.1.5, 192.168.1.6"
        searchdomain = "prod.davidingwersen.com"
        ip_address = "192.168.1.222/24"
        bridge = "vmbr2"
        storage_size = 10
    }
}