variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
  default = {
    Project     = "expense"
    Environment = "dev"
    Terraform   = "true"
    Component   = "cdn"
  }
}

variable "zone_name" {
  default = "chavavenkat.online"
}