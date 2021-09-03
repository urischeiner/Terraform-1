resource "null_resource" "delay" {
  provisioner "local-exec" {
    command = var.sleep
    interpreter = ["/bin/sleep"]
  }
}

output "version" {
  value = var.tfversion
}
