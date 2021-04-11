resource "helm_release" "flux" {
    depends_on = [kubernetes_namespace.flux-ns]
    name        = "flux" #format("helm_operator-%s", var.environment)
    repository  = "https://charts.fluxcd.io"
    chart       = "flux"
    version     = "1.3.0"
    namespace   = var.namespace

    values = [
        file("values/flux.yaml")
    ]

    set {
        name    = "git.ssh.known_hosts"
        value   = local.github_known_hosts
    }

    set {
        name    = "git.secretName"
        value   = kubernetes_secret.git_ssh.metadata.0.name
    }

    set {
        name    = "git.branch"
        value   = var.branch
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