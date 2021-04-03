resource "kubernetes_secret" "flux-secret" {
  metadata {
    name      = "flux-git-deploy"
    namespace = var.namespace
  }
  type = "Opaque"
}