# ./modules/../main.tf

# MODULE - RESOURCES 
# ------------------

resource "proxmox_virtual_environment_network_linux_vlan" "vlan" {
  node_name = var.node_name
  interface = var.interface
  name      = "${var.interface}.${var.vlan}"
  vlan      = var.vlan
}

resource "proxmox_virtual_environment_network_linux_bridge" "bridge" {
  node_name = var.node_name
  name      = var.name
  address   = "${var.address}/24"
  ports = [
    proxmox_virtual_environment_network_linux_vlan.vlan.name
  ]
}
