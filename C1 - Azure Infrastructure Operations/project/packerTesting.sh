# Create the packer image under resource group, myUdacityRG
packer build server-project.json

# Deploy a VM using the packer image, myPackerImage
az vm create --resource-group myUdacityRG --name myVM --image myPackerImage --admin-username wcho --generate-ssh-keys