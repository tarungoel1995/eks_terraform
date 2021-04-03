resource "aws_eks_cluster" "eks_cluster" {
  name     = var.eks_cluster_name
  role_arn = aws_iam_role.eks_iam_role.arn

  vpc_config {
    security_group_ids = [aws_security_group.eks_cluster_sg.id]
    subnet_ids = data.aws_subnet_ids.public.ids
    public_access_cidrs = ["2.50.181.47/32", "103.206.101.209/32"]
  }

  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.AmazonEKSServicePolicy,
  ]
}