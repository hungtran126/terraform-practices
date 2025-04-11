output "aws_iam_role" {
  value = {
    eks_cluster_role    = aws_iam_role.eks_cluster_role
    eks_node_group_role = aws_iam_role.nodes
  }
}

output "aws_iam_role_policy_attachment" {
  value = {
    eks_cluster_policy_attachment            = aws_iam_role_policy_attachment.eks_cluster_policy_attachment
    nodes_AmazonEKSWorkerNodePolicy          = aws_iam_role_policy_attachment.nodes-AmazonEKSWorkerNodePolicy
    nodes_AmazonEKS_CNI_Policy               = aws_iam_role_policy_attachment.nodes-AmazonEKS_CNI_Policy
    nodes_AmazonEC2ContainerRegistryReadOnly = aws_iam_role_policy_attachment.nodes-AmazonEC2ContainerRegistryReadOnly
  }
}

output "aws_eks_cluster" {
  value = {
    eks_cluster    = aws_eks_cluster.this
    eks_node_group = aws_eks_node_group.private_nodes
  }
}

output "eks_cluster_autoscaler_arn" {
  value = aws_iam_role.eks_cluster_autoscaler.arn
}
