output "master_ip" {
   value = vsphere_virtual_machine.master_nodes.*.default_ip_address
}
output "data_ip" {
   value = vsphere_virtual_machine.data_nodes.*.default_ip_address
}