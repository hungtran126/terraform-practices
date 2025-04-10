variable "cidr_block" {
  description = "The network CIDR block of VPC"
  default     = "10.0.0.0/16"
}
variable "default_tags" {
  default = {
    created_by       = "hungtran",
    created_on       = "2025-04-03",
    last_modified_by = "hungtran",
    last_modified_on = "2025-04-03"
  }
}
variable "vpc_name" {
  default = "my_vpc"
}
variable "eks_cluster_name" {
  default = "my_eks_cluster"
}
variable "eks_cluster_version" {
  default = "1.31"
}
variable "eks_default_tags" {
    default = {
        environment = "dev"
        terraform = "true"
    }
}