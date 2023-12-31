# -------------------------------------------------------------
# File Name: nat-app01.tf
# Deploy a new VM from a template.
#
# REQUIREMENTS #1: vsphere_tag_category and vsphere_tag must exist
#                  cd helpers/tags && terraform apply
# REQUIREMENTS #2: deploy_vsphere_folder and deploy_vsphere_sub_folder must exist
#                  cd helpers/folders && terraform apply
#
# Tue Nov 2 12:59:12 BST 2020 - juliusn - initial script
# -------------------------------------------------------------

# -------------------------------------------------------------
# Create web server - nat-app01
# -------------------------------------------------------------

module "nat-app01" {
    source          = "../modules/vsphere-deploy-linux-vm/"
    # -------------------------------------------------------------
    # INFRASTRUCTURE - VMware vSphere vCenter settings 
    # -------------------------------------------------------------
    vsphere_datacenter   = "Datacenter"
    vsphere_cluster      = "los-angeles-cluster"
    vsphere_datastore    = "vsanDatastore"
    vsphere_folder       = "Production"
    vsphere_sub_folder   = "Applications"

    # -------------------------------------------------------------
    # GUEST - VMware vSphere VM settings 
    # -------------------------------------------------------------
    guest_template          = "Ubuntu-20-04-Template"
    guest_template_folder   = "Templates"
    guest_vm_name           = "nat-app01"
    guest_vcpu              = "1"
    guest_memory            = "4096"
    guest_disk0_size        = "30"
    guest_network           = "TF-Segment-App"
    guest_ipv4_address      = "10.10.30.10"
    guest_ipv4_netmask      = "24"
    guest_ipv4_gateway      = "10.10.30.1"
    guest_dns_servers       = "10.10.30.1"
    guest_dns_suffix        = "flexlab.local"
    guest_domain            = "flexlab.local"
       
    guest_category_name     = "environment"
    guest_tag_name          = "prod"
}

output "nat-app01-VM-ip" {
	value = module.nat-app01.VM-ip
}
output "nat-app01-VM-guest-ip" {
	value = module.nat-app01.VM-guest-ip
}
