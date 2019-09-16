subscription-manager repos --enable=rh-gluster-3-client-for-rhel-7-server-rpms
yum update -y glusterfs-fuse
setsebool -P virt_sandbox_use_fusefs on
setsebool -P virt_use_fusefs on

