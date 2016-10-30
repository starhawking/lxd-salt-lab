#!/usr/bin/env bash                                                                                                                    

ssh_pub_key=$(cat ~/.ssh/id_rsa.pub)

lxc_profile=default

lxc_command="lxc profile set ${lxc_profile} user.user-data -"
# lxc_command="cat"


$lxc_command <<EOF                                                    
#cloud-config                                                                                                                          
                                                                                                                                       
package_upgrade: true                                                                                                                  
package_update: true                                                                                                                   
package_reboot_if_required: true                                                                                                       
                                                                                                                                       
ssh_authorized_keys:                                                                                                                   
  - ${ssh_pub_key}
EOF

