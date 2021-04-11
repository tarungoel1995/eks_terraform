resource "kubernetes_namespace" "flux-ns" {
  metadata {
    annotations = {
      name = var.namespace
    }
    labels = {
      name = var.namespace
    }
    name = var.namespace
  }
  provisioner "local-exec" {
    when       = destroy
    command    = "kubectl delete all --all -n ingress-nginx --cascade=true --wait=false && sleep 120"
  }
}