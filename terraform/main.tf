# ./main.tf

# ROOT - MODULES 
# ------------------

module "proxmox-vlan" {
  // source module
  source = "./modules/base" 

  // pass variables to module
  node_name = "pve"
  interface = "enp7s0"
  vlan      = "10"
  name      = "vmbr10"
  address   = "192.168.10.1"
}
