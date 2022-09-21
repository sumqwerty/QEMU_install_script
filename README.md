# QEMU_install_script
Script to install QEMU and Virt Manager

## To install using install.sh(replace "ubuntu" with your user)
```
wget "https://raw.githubusercontent.com/sumqwerty/QEMU_install_script/main/install.sh" && sudo chmod +x install.sh && sudo ./install.sh $USER
```


### 1. Check CPU cores for virtualization(Should be greater than 0)

```
egrep -c '(vmx|svm)' /proc/cpuinfo
```

### 2. Install QEMU and virt-manager

```
sudo apt install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virtinst libvirt-daemon virt-manager -y
```

### 3. Verify status

```
sudo systemctl status libvirtd.service
```

### 4. Start Default Network for Networking

```
sudo virsh net-start default
```
```
sudo virsh net-autostart default
```

### 5. Add User to libvirt to Allow Access to VMs (replace ubuntu with the user)

```
sudo adduser ubuntu libvirt
```
```
sudo adduser ubuntu libvirt-qemu
```
