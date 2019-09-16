#
subscription-manager register --org=__ORGANIZATION__ --activationkey=__ACTIVATION_KEY__

# Do not process the initial GNOME setup on first login..
mkdir /home/rludva/.config
echo "yes" > /home/rludva/.config/gnome-initial-setup-done
chown -R rludva:rludva /home/rludva

# Do not use power-save futures for virtual machine (+lock screen)..
sudo -u rludva gsettings set org.gnome.desktop.session idle-delay 0

# Allow local user sudo without asking for password..
sed -i "s/# %wheel	ALL=(ALL)	NOPASSWD: ALL/%wheel	ALL=(ALL)	NOPASSWD: ALL/g" /etc/sudoers

# After boot plug the network interface..
sed -i 's/ONBOOT="no"/ONBOOT="yes"/' /etc/sysconfig/network-scripts/ifcfg-eth0

# Remove the initial setup after finishing the installation
mv /usr/libexec/initial-setup/initial-setup-graphical /usr/libexec/initial-setup/_initial-setup-graphical
touch /usr/libexec/initial-setup/initial-setup-graphical
chmod +x /usr/libexec/initial-setup/initial-setup-graphical

# For root add same useful goodies..
cat <<EOF > /root/.bashrc_local
__TEMPLATE_ROOT_BASHRC_LOCAL__
EOF

echo >> /root/.bashrc
echo "# Load local resources for bash.. ">> /root/.bashrc
echo "source /root/.bashrc_local" >> /root/.bashrc

# Prepare same basic stuff for editor..
cat <<EOF > /root/.vimrc
__TEMPLATE_ROOT_VIMRC__
EOF

# Put cluster name to special file..
cat <<EOF > /etc/cluster_name
__TEMPLATE_CLUSTER_NAME__
EOF

# Put cluster name to special file..
cat <<EOF > /etc/cluster_nodes
__TEMPLATE_CLUSTER_NODES__
EOF

# Generate same fresh scripts..
mkdir /root/bin
cat <<EOF > /root/bin/unsubscribe
__TEMPLATE_ROOT_BIN_UNSUBSCRIBE__
EOF
chmod +x /root/bin/unsubscribe

# Enable autologin of 'rludva' user..
cat <<EOF > /etc/gdm/custom.conf
__TEMPLATE_RLUDVA_GNOME_AUTOLOGIN__
EOF
systemctl restart gdm.service

# Resource file for bash..
cat <<EOF > /home/rludva/.bashrc_local
__TEMPLATE_RLUDVA_BASHRC_LOCAL__
EOF

echo >> /home/rludva/.bashrc
echo "# Load local resources for bash.. ">> /home/rludva/.bashrc
echo "source /home/rludva/.bashrc_local" >> /home/rludva/.bashrc


# Prepare same basic stuff for editor..
cat <<EOF > /home/rludva/.vimrc
__TEMPLATE_RLUDVA_VIMRC__
EOF

# Generate same fresh scripts..
mkdir -p /home/rludva/.config/autostart
cat <<EOF > /home/rludva/.config/autostart/org.gnome.Terminal.desktop
__TEMPLATE_RLUDVA_CONFIG_AUTOSTART_TERMINAL__
EOF
chown -R rludva:rludva /home/rludva

#
yum update -y
