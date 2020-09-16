### Configure the OpenStack Provider
auth_url                    = "https://192.168.139.131:5000/v3/"
user_name                   = "root"
password                    = "abcd1234"
tenant_name                 = "ibm-default"
domain_name                 = "Default"
openstack_availability_zone = ""

### Configure the Instance details
network_name                = "ocp-net"
#network_type               = "SRIOV"
scg_id                      = "795d181d-a550-4d2b-83a8-3ed55e9c17bd"
rhel_username               = "root"
#keypair_name                = "mykeypair"
public_key_file             = "data/id_rsa.pub"
private_key_file            = "data/id_rsa"
private_key                 = ""
public_key                  = ""
rhel_subscription_username  = "your username"
rhel_subscription_password  = "your password"
connection_timeout          = 45
jump_host                   = ""

bastion                     = {instance_type    = "2c16g", image_id     = "757e0c6e-c749-4957-aa7f-67fb1dd3332b"}
bootstrap                   = {instance_type    = "2c16g", image_id     = "cee6e7ab-dc23-471f-9228-531482984899",  "count"   = 1}
master                      = {instance_type    = "2c16g",  image_id    = "cee6e7ab-dc23-471f-9228-531482984899",  "count"   = 3}
worker                      = {instance_type    = "4c32g",  image_id     = "cee6e7ab-dc23-471f-9228-531482984899",  "count"   = 2}


### OpenShift variables
#openshift_install_tarball   = "https://mirror.openshift.com/pub/openshift-v4/ppc64le/clients/ocp/stable-4.5/openshift-install-linux-4.5.7.tar.gz"
#openshift_client_tarball    = "https://mirror.openshift.com/pub/openshift-v4/ppc64le/clients/ocp/stable-4.5/openshift-client-linux-4.5.7.tar.gz"
openshift_install_tarball   = "http://192.168.138.247:8088/openshift-install-linux-4.4.20.tar.gz"
openshift_client_tarball    = "http://192.168.138.247:8088/openshift-client-linux-4.4.20.tar.gz"

#release_image_override = ""

# Download pull_secret_file from https://cloud.redhat.com/openshift/install/pull-secret
pull_secret_file = "data/pull-secret.txt"
cluster_domain = "example.com"
cluster_id_prefix = "test"
cluster_id        = ""

### Local registry variables
enable_local_registry = false  #Set to true to enable usage of the local registry for restricted network install.

#local_registry_image = "docker.io/ibmcom/registry-ppc64le:2.6.2.5"
#ocp_release_tag      = "4.4.9-ppc64le"

dns_forwarders      = "8.8.8.8; 8.8.4.4"
mount_etcd_ramdisk  = false
installer_log_level = "info"
ansible_extra_options = "-v"
rhcos_kernel_options  = []
sysctl_tuned_options  = false
#sysctl_options = ["kernel.shmmni = 16384", "net.ipv4.tcp_tw_reuse = 1"]
#match_array = <<EOF
#- label: node-role.kubernetes.io/master
#- label: icp4data
#  value: database-db2oltp
#  type: pod
#- label: disk
#  value: ssd
#EOF
chrony_config = false
#chrony_config_servers = [ {server = "0.centos.pool.ntp.org", options = "iburst"}, {server = "1.centos.pool.ntp.org", options = "iburst"} ]

#helpernode_repo             = "https://github.com/RedHatOfficial/ocp4-helpernode"
#helpernode_tag = ""
#install_playbook_repo       = "https://github.com/ocp-power-automation/ocp4-playbooks"
#install_playbook_tag = ""

## Set up a squid proxy server on the bastion node.
setup_squid_proxy       = false

## N/A when `setup_squid_proxy = true`, set `setup_squid_proxy = false` when using external proxy.
## Uncomment any one of the below formats to use external proxy. Default 'port' will be 3128 if not specified. Not authenticated if 'user' is not specified.
#proxy = {}
#proxy = {server = "hostname_or_ip"}
#proxy = {server = "hostname_or_ip", port = "3128", user = "pxuser", password = "pxpassword"}

storage_type    = "nfs"
volume_size = "300" # Value in GB
#volume_storage_template = ""

#upgrade_version = ""
#upgrade_channel = ""  #(stable-4.x, fast-4.x, candidate-4.x) eg. stable-4.5
#upgrade_pause_time = "90"
#upgrade_delay_time = "600"
