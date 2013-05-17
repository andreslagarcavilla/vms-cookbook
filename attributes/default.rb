# The Openstack version on the node. Value should be either "essex" or "folsom".
default["vms"]["os-version"] = "folsom"

# /etc/sysconfig/vms config file parameters. Set to nil to comment out the
# appropriate line in the config file, provided the parameter isn't
# mandatory. See the template 'vms.erb' for an inline explanation of what these
# parameters do.

default["vms"]["sysconfig"]["vms_user"] = nil
default["vms"]["sysconfig"]["vms_group"] = nil
default["vms"]["sysconfig"]["vms_shelf_path"] = "/dev/shm"
default["vms"]["sysconfig"]["vms_shared_path"] = "/var/gridcentric"
default["vms"]["sysconfig"]["vms_disk_url"] = nil
default["vms"]["sysconfig"]["vms_memory_url"] = nil
default["vms"]["sysconfig"]["vms_logs"] = "/var/log/vms"
default["vms"]["sysconfig"]["vms_single_log"] = "false"
default["vms"]["sysconfig"]["vms_cache"] = "/tmp/vms"
default["vms"]["sysconfig"]["vms_store"] = nil
default["vms"]["sysconfig"]["vmsd_opts"] = ""
default["vms"]["sysconfig"]["vms_debug"] = "0"
default["vms"]["sysconfig"]["vms_guest_params"] = nil
default["vms"]["sysconfig"]["vms_ceph_conf"] = nil
default["vms"]["sysconfig"]["vms_ceph_login"] = nil
default["vms"]["sysconfig"]["vms_qemu_cpu_model"] = nil
default["vms"]["sysconfig"]["shared_device"] = nil
default["vms"]["sysconfig"]["shared_volume"] = nil

# Repository parameters. These control how the gridcentric repositories are
# accessed during the node setup. To gain access to the private repositories,
# use the private key provided to you by Gridcentric.
default["vms"]["repo"]["url"] = "http://downloads.gridcentriclabs.com/packages"
default["vms"]["repo"]["agent_key"] = "agent"
default["vms"]["repo"]["client_key"] = "cobaltclient"
default["vms"]["repo"]["private_key"] = nil
