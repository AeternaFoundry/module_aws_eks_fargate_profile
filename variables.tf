variable "eks_fargate_profiles" {
  description = <<EOT
Map of eks_fargate_profiles, attributes below
Required:
    - cluster_name
    - fargate_profile_name
    - pod_execution_role_arn
    - selector (block):
        - labels (optional)
        - namespace (required)
Optional:
    - region
    - subnet_ids
    - tags
    - tags_all
EOT

  type = map(object({
    cluster_name           = string
    fargate_profile_name   = string
    pod_execution_role_arn = string
    region                 = optional(string)
    subnet_ids             = optional(set(string))
    tags                   = optional(map(string))
    tags_all               = optional(map(string))
    selector = list(object({
      labels    = optional(map(string))
      namespace = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.eks_fargate_profiles : (
        length(v.selector) >= 1
      )
    ])
    error_message = "Each selector list must contain at least 1 items"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

