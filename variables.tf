# -------------------------------------------------------------
# File Name: variables.tf
# Defining simple variables required for VM deployment
#
# Tue Nov 3 12:59:12 BST 2020 - juliusn - initial script
# -------------------------------------------------------------

# -------------------------------------------------------------
# PROVIDER - VMware vSphere vCenter connection 
# -------------------------------------------------------------

variable "provider_vsphere_host" {
    description = "vCenter server FQDN or IP"
    type        = string
    default     = vcsa-196337.a5a79b67.us-west2.gve.goog
}

variable "provider_vsphere_user" {
    description = "vSphere username to use to connect to the environment"
    type        = string
    default     = CloudOwner@gve.local
}

variable "provider_vsphere_password" {
    description = "vSphere password"
    type        = string
    default     = TMcaYhQi=kwjXU0W
}

variable "provider_vsphere_unverified_ssl" {
    description = "If there is a self-signed cert"
    default     = true
}
