provider "vsphere" {
  user           = var.vcenter_username
  password       = var.vcenter_password
  vsphere_server = "192.168.100.12"
  # If you have a self-signed cert
  allow_unverified_ssl = true
}

# Data Sources
data "vsphere_datacenter" "dc" {
  name = "Zen-DC"
}
data "vsphere_datastore" "datastore" {
  name          = "datastore2"
  datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_host" "host" {
  name          = "192.168.100.9"
  datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_network" "network" {
  name          = "VM Network"
  datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_virtual_machine" "template" {
  name          = "centos7-temp"
  datacenter_id = data.vsphere_datacenter.dc.id
}

#Virtual Machine Resource
resource "vsphere_virtual_machine" "Web" {
  resource_pool_id = data.vsphere_host.host.resource_pool_id
  name             = "Web-${count.index}"
  datastore_id     = data.vsphere_datastore.datastore.id
  count = 2
  num_cpus = 1
  memory   = 2096
  guest_id = data.vsphere_virtual_machine.template.guest_id

  network_interface {
    network_id = data.vsphere_network.network.id
  }
  disk {
    label = "disk0"
    size  = data.vsphere_virtual_machine.template.disks.0.size
  }
  clone {
    template_uuid = data.vsphere_virtual_machine.template.id
  }

}