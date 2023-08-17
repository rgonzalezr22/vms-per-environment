# -------------------------------------------------------------
# File Name: nat-web01.tf
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
# Create web server - nat-web01
# -------------------------------------------------------------

module "nat-web01" {
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
    guest_vm_name           = "prod-web01"
    guest_vcpu              = "1"
    guest_memory            = "4096"
    guest_disk0_size        = "30"
    guest_network           = "TF-Segment-Web"
    guest_ipv4_address      = "10.10.20.11"
    guest_ipv4_netmask      = "24"
    guest_ipv4_gateway      = "10.10.20.1"
    guest_dns_servers       = "10.10.20.1"
    guest_dns_suffix        = "flexlab.local"
    guest_domain            = "flexlab.local"
       
    guest_category_name     = "environment"
    guest_tag_name          = "prod"
}
