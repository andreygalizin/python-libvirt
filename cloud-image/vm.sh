## Source:
## https://serverascode.com/2018/06/26/using-cloud-images.html

# Download the image
wget https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.img
# Enlarge Virtual Disk
qemu-img info bionic-server-cloudimg-amd64.img
qemu-img resize bionic-server-cloudimg-amd64.img 20G
# # Set Root Password
sudo virt-customize -a bionic-server-cloudimg-amd64.img --root-password password:coolpass
# # Remove Cloud Init
sudo virt-customize -a bionic-server-cloudimg-amd64.img --uninstall cloud-init
# # Define and Start the VM
virsh define vm.xml
# virsh start vm_name
# # # Access Console -> Handy dandy virsh console 
# virsh console vm_name
