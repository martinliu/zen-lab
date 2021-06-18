# vCenter server 的密码信息保存在 secret.tfvars 文件中，这个文件会被排除，只在本地使用
vsphere_server = "192.168.100.12"
vsphere_datacenter = "Zen-DC"
vsphere_datastore = "datastore2"
vsphere_resource_pool = "cluster/Resources"
vsphere_host = "192.168.100.9"
vsphere_network = "VM Network"
vsphere_virtual_machine_template = "centos7-t"
vsphere_virtual_machine_name = "es-"