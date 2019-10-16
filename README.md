# Clusterns
Purporse of this repository is to build environment for different cluster templates primary of OCP, Elasticsearch, Gluster and similar technologies.

All hostnames/nodes have already DNS records. You can investigate the IP address with dig <host>. For exampel
``` bash
[rludva@orenji ~]$ dig juichi-ichi-master.local.nutius.com

; <<>> DiG 9.11.8-RedHat-9.11.8-1.fc30 <<>> juichi-ichi-master.local.nutius.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 47406
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;juichi-ichi-master.local.nutius.com. IN	A

;; ANSWER SECTION:
juichi-ichi-master.local.nutius.com. 3600 IN A	192.168.122.71

;; Query time: 56 msec
;; SERVER: 10.38.5.26#53(10.38.5.26)
;; WHEN: Fri Aug 09 10:24:20 CEST 2019
;; MSG SIZE  rcvd: 80
```

So we are using domain nutius.com for all clusters. You can define your own domanin, but then it is important to define DNS records for these host/nodes. We are using Amazon Rout 53 and all hosts have 192.168.122.* addresses which are reserved for libvirtd virtual machines.

## Why the stupid names of machines?
Well it is a pain to type numbers on keyboard, because we have to move our right hand to numerical keyboard or press numbers from top line of alphabet keyboard. So we are using japanese numbers for numbers. For those who practice any martial art are these number knowen very well. For the others you have to learn something new. Good luck!
* 1  - ichi
* 2  - ni
* 3  - san
* 4  - shi
* 5  - go // no go lang :-D
* 6  - roku
* 7  - shichi
* 8  - hachi
* 9  - kju
* 10 - ju

So first master of cluster for 3.11 is named juichi-ichi-master.local.nutous.com. Second infra node for this cluster is named juichi-ni-infra-node-local-nutius.com and so on..


**Cluster Patterns:**
* juichi	OCP v3.11 01 - First basic version of OCP v3.11
* juichigo	OCP v3.11 05 - First production cluster environment with simple Javascript HTTP Hello World Application

* kyuu		OCP v3.9  01 - first cluster pattern with single master and node.
* kyuuni	OCP v3.9  02 - second cluster pattern with single master and node.
* kyuusan	OCP v3.9  03 - third cluster pattern with single master and node.
* kyuuroku	OCP v3.9  04 - Three infra nodes for three elasticsearch pods (number_of_shards=3, number_of_replica=2, es_cluster_size=3)


Scenarios and exercises:
kyuu_ichi - first attempt to install OCP v3.9
kyuu_ni - second attempt with trying to install IPSec
kyuu_san - third attempt with trying to upgrade to OCP v3.10 and then to v3.11

## Inicialization part

### Clone the clusterns repository
1. If you do not have folder for repositories, than create one. Good place for these type of files is /var/git/github.com
```bash
$ sudo mkdir -p /var/git/github.com
$ sudo setfacl -mR "u/$USER:rwx" /var/git
$ sudo setfacl -mr "g/$USER:rwx" /var/git
$ cd /var/git/github.com
$ mkdir rludva
$ cd rludva
$ git clone git@github.com/rludva/clusterns.git
```

2. Create symbolic link to /var/git/github.com/rludva/clusterns/bin/cluster in /usr/local/bin
```bash
ln -s /var/git/github.com/rludva/clusterns/bin/cluster /usr/local/bin/cluster
```

3. Before you begin you must have environment variables in you environment. Good habit is to create your own .bashrc_local file and create bash resources that are unique for machine you are logged and call this script from .bashrc using the:
```bash
# Local specific setting, for example instances o secret variables like PASSWORD and SSHPASS..
if [ -e "$HOME/.bashrc_local" ]; then
        . $HOME/.bashrc_local
fi
```

4. Content of $HOME/.bashrc_local
```bash
export ORGANIZATION="<organization>"
export ACTIVATION_KEY="<activation_key>"
export POOLID="<subscription poolid>"
export SSHPASS="<ssh password>"
export PASSWORD="<password>"
export OREG_AUTH_USER="<registry_user>"
export OREG_AUTH_PASSWORD="<password>"

5. You can use the "u" as alias for cluster script..
```bash
alias u="/usr/local/bin/cluster"
```

### Ensure that libvirt is installed
1. Ensure your CPU has Intel VT or AMD-V Virtualization extensions
```bash
$ cat /proc/cpuinfo | egrep "vmx|svm"
$ sudo dnf install -y libvirt virt-install qemu-kvm
```

2. After installation, verify that Kernel modules are loaded
```bash
lsmod | grep kvm
```

3. Start and enable KVM daemon
```bash
sudo systemctl start libvirtd
sudo systemctl enable libvirtd
```

4. Install Virtual machine Manager GUI
```bash
sudo dnf install -y virt-manager
```

5. Script for lunchig Virt Manager without asking for password
```bash
echo -e '#!/bin/bash\n\nsudo virt-manager' > /usr/local/bin/manager
```
Well it is also good to have sudo without asking for password on your local development machine. To do that edit the */etc/sudoers* and uncoment the *NOPASSWD* for *wheel* group:
```bash
sudo vim /etc/sudoers

%wheel	ALL=(ALL)	NOPASSWD: ALL
```

6. And then add short cut for launching the Virt Manager by pressing the Windows+plus keys.
```bash
mk='org.gnome.settings-daemon.plugins.media-keys'
ckb='/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings'

gsettings set $mk.custom-keybinding:$ckb/custom21/ name "Virutal Manager"
gsettings set $mk.custom-keybinding:$ckb/custom21/ command "sudo virt-manager"
gsettings set $mk.custom-keybinding:$ckb/custom21/ binding "<Super>plus"
```
### Configure the libvirt
1. Download images of Red Hat Enterprise Linux, Red Hat Gluster Storage
* Use this URL for downloading: https://access.redhat.com/downloads
* Red Hat Enterprise Linux use: https://developers.redhat.com/products/rhel/download/
```bash
sudo mkdir /var/lib/libvirt/images/iso
cd /var/lib/libvirt/images/iso
```
2. After downloading creat symbolic link for common images. Without this symbolic link the image will not be found because the images are updated relatively often.
```bash
ln -s rhel-server-7.6-x86_64-dvd.iso rhel.iso
ln -s rhgs-3.4-rhel-7-x86_64-dvd-1.iso gluster.iso
```

3. Edit the default network for libvirt and add hosts. Each host of clusterns cluster has his own MAC address and IP address. Add content form the *<repository>/templates/etc/libvirt/qemu/networks/default*. Copy just the <host mac="..." ... /> lines.
```bash
sudo virsh net-edit default
```

4. After editing the default libvirt network, destroy the old instance and start new one with updated configuration.
```bash
sudo virsh net-destroy default
sudo virsh net-start default
```

5. Add rows of clusters hosts to your local DNS server. You can use dnsmasq, named or you can define your own domain on Amazon Route53 for example.
!!! TODO: Describe more this part.. !!!

## Creating cluster
0. Ensure that initialization and configuration part of libvirt was done successfully
1. clone source repository
```
git@github.com:rludva/clusterns.git
```

2. Navigate to clusters directory and particular cluster, then execute the setup.sh
```bash
$ ./clusters/ocp_v3.11_01/setup.sh
```

3. When the basic operating system is installed the hosts are probably switched off. Power on the hosts using the *cluster* script and generate distribute you SSH public key to hosts to have access to them
```bash
$ cluster <cluster_alias> on
$ cluster <cluster_alias> id
```

4. After the cluster is built from image and kick start it is automatically registered with subscription and it is ready for deployment of ocp. The */root/bin/ocp* as prerequisites for OpenShift Container Platform is executed. But it is still important to process the ssh-stuff.sh script on workstation:
```bash
# /root/bin/ssh-stuff.sh
```

## Commands
Commands are executed by cluster command.
The syntax is cluster <cluster-name> command. If cluster-name is not specified last used cluster-name is used.

* cluster <cluster-name> ping
:Test ping cluster nodes.
* cluster <cluster-name> ls
:List of data row for particual cluster
* cluster <cluster-name> ls-machine
: List of all machines in specified cluster
* cluster <cluster-name> on/off
:Switch on or off virtual machines with nodes of the cluster + workstation as a installation/service machine.
* cluster <cluster-name> unsubscribe
:Remove all subscribtions on all nodes of the cluster.
* cluster <cluster-name> delete
:Undefine the cluster from Virtual Manager. Right now is not delete the storare and I do not know we. It is better to delete the cluster manually from Virtual Manager.
* cluster <cluster-name> console
:Open browser with OpenShift Container Platform Web Console for cluster.
* cluster ls
:List all defined clusters


Tips
====
Win+F4    Open gnome-terminal window for workstation (root prompt)
Win+F5    Open gnome-terminal window for master (root prompt)
Win+F10 - Open OpenShift Container Platform Web Console for active cluster

Hints
=====
* Use "n" alias for vim /etc/ansible/hosts, the iNventory file.
* Use p to execute ansible-playbook /usr/share/ansible/openshift-ansible/playbooks/prerequisites.yml
* Use "d" to execute ansible-playbook /usr/share/ansible/openshift-ansible/playbooks/deploy_cluster.yml
* Use "c" on old version of OCP for installing the cluster (ansible-playbook /usr/share/ansible/openshift-ansible/playbooks/byo/config.yml)
* You can use aliases for commont oc command, like *ocp* for example. Discover more in */root/.bashrc_local* and if you want more, create a pull request for this project.
