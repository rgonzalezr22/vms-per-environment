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
    user                    = CloudOwner@gve.local
    password                = TMcaYhQi=kwjXU0W
    vsphere_server          = vcsa-196337.a5a79b67.us-west2.gve.goog
    allow_unverified_ssl    = false
