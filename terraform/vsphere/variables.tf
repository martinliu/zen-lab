variable "vsphere_server" {
    description = "vsphere server for the environment - EXAMPLE: vcenter01.hosted.local"
    default = "192.168.1.29"
}
variable "vsphere_user" {
    description = "vsphere server for the environment - EXAMPLE: vsphereuser"
    default = "administrator@devopscoach.local"
}
variable "vsphere_password" {
    description = "vsphere server password for the environment"
    default = "DevOps@1234"
}
variable "rpm" {
    description = "rpm for software install"
    default = "installer.rpm"
}
variable "password" {
    description = "Root account password"
    default = "devops1234"
}
variable "servername" {
    description = "Server Name"
    default = "terraform-1"
}