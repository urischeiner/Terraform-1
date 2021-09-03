resource "null_resource" "delay" {
  provisioner "local-exec" {
    command = var.sleep
    interpreter = ["/bin/sleep"]
  }
}

output "version" {
  value = var.tfversion
}
output "color" {
  value = var.tfcolor
}
output "foo" {
  value = var.tffoo
}
