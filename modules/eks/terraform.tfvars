region = "us-east-1"

vpc_name = "main_eks_istio"

eks_iam_role_name = "istio_eks_cluster_role"

eks_cluster_sg = "istio_eks_cluster_sg"

eks_cluster_name = "istio_eks_cluster"

eks_worker_iam_role_name = "istio_eks_worker_cluster_role"

eks_worker_instance_profile_name = "istio_eks_worker_instance_profile"

eks_worker_cluster_sg = "istio_eks_worker_cluster_sg"

workstation_ip = "103.206.101.209/32"

subnet_ids = distinct(flatten([
    for s in data.terraform_remote_state.infra.outputs.subnets : values(s)
    ]))