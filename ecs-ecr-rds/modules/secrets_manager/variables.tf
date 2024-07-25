variable "kms_key_id" {
  description = "ID of the KMS key"
  type        = string
}

variable "default_tag" {
  description = "A default tag to add to Secrets Manager"
  type        = string
}
