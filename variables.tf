variable "site_domain" {
  type        = string
  description = "global domain name for the site"
}

variable "aws_region" {
    type        = string
    default     = "us-east-1"
    description = "AWS region to deploy resources"
}

variable "aws_profile" {
    type        = string
    description = "AWS profile"
}