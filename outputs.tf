output "eks_fargate_profiles_id" {
  description = "Map of id values across all eks_fargate_profiles, keyed the same as var.eks_fargate_profiles"
  value       = { for k, v in aws_eks_fargate_profile.eks_fargate_profiles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "eks_fargate_profiles_arn" {
  description = "Map of arn values across all eks_fargate_profiles, keyed the same as var.eks_fargate_profiles"
  value       = { for k, v in aws_eks_fargate_profile.eks_fargate_profiles : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "eks_fargate_profiles_cluster_name" {
  description = "Map of cluster_name values across all eks_fargate_profiles, keyed the same as var.eks_fargate_profiles"
  value       = { for k, v in aws_eks_fargate_profile.eks_fargate_profiles : k => v.cluster_name if v.cluster_name != null && length(v.cluster_name) > 0 }
}
output "eks_fargate_profiles_fargate_profile_name" {
  description = "Map of fargate_profile_name values across all eks_fargate_profiles, keyed the same as var.eks_fargate_profiles"
  value       = { for k, v in aws_eks_fargate_profile.eks_fargate_profiles : k => v.fargate_profile_name if v.fargate_profile_name != null && length(v.fargate_profile_name) > 0 }
}
output "eks_fargate_profiles_pod_execution_role_arn" {
  description = "Map of pod_execution_role_arn values across all eks_fargate_profiles, keyed the same as var.eks_fargate_profiles"
  value       = { for k, v in aws_eks_fargate_profile.eks_fargate_profiles : k => v.pod_execution_role_arn if v.pod_execution_role_arn != null && length(v.pod_execution_role_arn) > 0 }
}
output "eks_fargate_profiles_region" {
  description = "Map of region values across all eks_fargate_profiles, keyed the same as var.eks_fargate_profiles"
  value       = { for k, v in aws_eks_fargate_profile.eks_fargate_profiles : k => v.region if v.region != null && length(v.region) > 0 }
}
output "eks_fargate_profiles_selector" {
  description = "Map of selector values across all eks_fargate_profiles, keyed the same as var.eks_fargate_profiles"
  value       = { for k, v in aws_eks_fargate_profile.eks_fargate_profiles : k => v.selector if v.selector != null && length(v.selector) > 0 }
}
output "eks_fargate_profiles_status" {
  description = "Map of status values across all eks_fargate_profiles, keyed the same as var.eks_fargate_profiles"
  value       = { for k, v in aws_eks_fargate_profile.eks_fargate_profiles : k => v.status if v.status != null && length(v.status) > 0 }
}
output "eks_fargate_profiles_subnet_ids" {
  description = "Map of subnet_ids values across all eks_fargate_profiles, keyed the same as var.eks_fargate_profiles"
  value       = { for k, v in aws_eks_fargate_profile.eks_fargate_profiles : k => v.subnet_ids if v.subnet_ids != null && length(v.subnet_ids) > 0 }
}
output "eks_fargate_profiles_tags" {
  description = "Map of tags values across all eks_fargate_profiles, keyed the same as var.eks_fargate_profiles"
  value       = { for k, v in aws_eks_fargate_profile.eks_fargate_profiles : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "eks_fargate_profiles_tags_all" {
  description = "Map of tags_all values across all eks_fargate_profiles, keyed the same as var.eks_fargate_profiles"
  value       = { for k, v in aws_eks_fargate_profile.eks_fargate_profiles : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

