egrep -c '(vmx|svm)' /proc/cpuinfo

sudo apt install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virtinst libvirt-daemon virt-manager -y

sudo virsh net-start default
sudo virsh net-autostart default

sudo virsh net-list --all

sudo adduser $1 libvirt
sudo adduser $1 libvirt-qemu
