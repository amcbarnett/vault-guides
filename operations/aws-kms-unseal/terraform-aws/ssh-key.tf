# WIll Not Work for TFE.  Need to Provide Existing Key Pair

#resource "tls_private_key" "main" {
#  algorithm = "RSA"
#}

#resource "null_resource" "main" {
#  provisioner "local-exec" {
#    command = "echo \"${tls_private_key.main.private_key_pem}\" > private.key"
#  }

#  provisioner "local-exec" {
#    command = "chmod 600 private.key"
#  }
#}

#resource "aws_key_pair" "main" {
#  key_name   = "vault-kms-unseal-${random_pet.env.id}"
#  public_key = "${tls_private_key.main.public_key_openssh}"
#}

variable "SSH_KEY_NAME" {
  default = "vaultawskeypair"
  description = "Pre-existing AWS key name you will use to access the instance(s)"
}
