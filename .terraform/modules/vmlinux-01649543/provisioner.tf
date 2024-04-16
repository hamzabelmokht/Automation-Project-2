resource "null_resource" "ansible_provisioner" {
  connection {
    type        = "ssh"
    host        = azurerm_linux_virtual_machine.vmlinux.public_ip_address
    user        = azurerm_linux_virtual_machine.vmlinux.admin_username
    private_key = file("~/.ssh/terraform_rsa")
  }

  provisioner "remote-exec" {
    inline = [
      "ansible-playbook 01649543-playbook.yml"
    ]
  }

  depends_on = [azurerm_linux_virtual_machine.vmlinux]
}