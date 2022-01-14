# QEMU_install_script
Script to install QEMU and Virt Manager

### 1. Check CPU cores for virtualization(Should be greater than 0)

```
$ egrep -c '(vmx|svm)' /proc/cpuinfo
```

### 2. Install QEMU and virt-manager

```
$ sudo apt install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virtinst libvirt-daemon virt-manager -y
```

### 3. Install QEMU and virt-manager

```
$ sudo apt install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virtinst libvirt-daemon virt-manager -y
```

### 4. Verify status

```
$ sudo systemctl status libvirtd.service
```

### 5. Start Default Network for Networking

```
$ sudo virsh net-start default
$ sudo virsh net-autostart default
```

### 6. Add User to libvirt to Allow Access to VMs (replace ubuntu with the user)

```
$ sudo adduser ubuntu libvirt
$ sudo adduser ubuntu libvirt-qemu
```
