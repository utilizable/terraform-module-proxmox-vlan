# ./outputs.tf

# ROOT - OUTPUTS
# ------------------

output "bridge_name" {
  value = proxmox_virtual_environment_network_linux_bridge.bridge.name
}
