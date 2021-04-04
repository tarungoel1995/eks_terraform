resource "kubernetes_secret" "flux-secret" {
  metadata {
    name      = "flux-git-deploy"
    namespace = var.namespace
  }
  data = {
    identity = format("%s\n", data.aws_secretsmanager_secret_version.git_ssh.secret_string)
  }
}