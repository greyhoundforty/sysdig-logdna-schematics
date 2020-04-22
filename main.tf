data "ibm_compute_ssh_key" "deploymentKey" {
  label = "ryan_tycho_2019"
}

resource "ibm_compute_vm_instance" "node" {
  count                = var.node_count
  hostname             = "rt-test-${count.index + 1}"
  domain               = var.domain
  os_reference_code    = var.os_reference_code["u18"]
  datacenter           = var.datacenter["us-east2"]
  network_speed        = 1000
  hourly_billing       = true
  private_network_only = false
  local_disk           = true
  user_metadata        = file("install.yml")
  flavor_key_name      = var.flavor_key_name["blocal-medium"]
  tags                 = ["ryantiffany", var.datacenter["us-east2"], "sysdig-logdna-alert-test"]
  ssh_key_ids          = [data.ibm_compute_ssh_key.deploymentKey.id]
}

