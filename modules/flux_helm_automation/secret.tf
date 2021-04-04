resource "kubernetes_secret" "git_ssh" {
  metadata {
    name      = "git-ssh"
    namespace = var.namespace
  }
  data = {
    identity = format("%s\n", data.aws_secretsmanager_secret_version.git_ssh.secret_string)
  }
}