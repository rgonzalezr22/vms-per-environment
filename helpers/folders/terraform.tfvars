# -------------------------------------------------------------
# File Name: teraform.tfvars
# Defining simple variables and credentials required for VM deployment
#
# Tue Nov 3 12:59:12 BST 2020 - juliusn - initial script
# -------------------------------------------------------------

# -------------------------------------------------------------
# INFRASTRUCTURE - VMware vSphere vCenter settings 
# -------------------------------------------------------------
vsphere_datacenter = "Datacenter"
vsphere_folder = "Production"
vsphere_sub_folder = "Applications"
provider_vsphere_host = vcsa-196337.a5a79b67.us-west2.gve.goog
provider_vsphere_user = CloudOwner@gve.local
provider_vsphere_password = TMcaYhQi=kwjXU0W
provider_vsphere_unverified_ssl = true
