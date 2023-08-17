# -------------------------------------------------------------
# File Name: teraform.tfvars
# Defining simple variables and credentials required for VM deployment
#
# Tue Nov 3 12:59:12 BST 2020 - juliusn - initial script
# -------------------------------------------------------------

# -------------------------------------------------------------
# GUEST - VMware vSphere VM settings 
# -------------------------------------------------------------

guest_category_name = "environment"
guest_tag_name = "prod"
provider_vsphere_host = "vcsa-196337.a5a79b67.us-west2.gve.goog"
provider_vsphere_user = "CloudOwner@gve.local"
provider_vsphere_password = "TMcaYhQi=kwjXU0W"
provider_vsphere_unverified_ssl = "true"
