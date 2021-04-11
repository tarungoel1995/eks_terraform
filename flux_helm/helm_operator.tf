resource "helm_release" "helm_operator" {
    #depends_on = [helm_release.flux]
    name        = "helm-operator" #format("helm_operator-%s", var.environment)
    repository  = "https://charts.fluxcd.io"
    chart       = "helm-operator"
    version     = "1.2.0"
    namespace   = var.namespace

    values = [
        file("values/helm.yaml")
    ]

    set {
        name    = "git.ssh.known_hosts"
        value   = local.github_known_hosts
    }

    set {
        name    = "git.ssh.secretName"
        value   = kubernetes_secret.git_ssh.metadata.0.name
    }

    #set {
    #    name    = "kube.config"
    #    value   = yamlencode({
    #        apiVersion  : "v1"
    #        clusters    : []
    #        contexts    :   [
    #            {
    #                context : {
    #                    cluster : ""
    #                    namespace   : var.namespace
    #                    user    : ""
    #                }
    #                name    : "default"
    #            }
    #        ]
    #        current-context : "default"
    #        kind            : "Config"
    #        preferences     : {}
    #        users           : []
    #    })
    #}

}