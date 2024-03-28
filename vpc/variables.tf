variable "enable_dns_hostnames" {
  type        = bool
  description = "enable dns hostnames in a Vpc"
  default     = true

}


variable "map_public_ip_on_launch" {
  type        = string
  description = "map public ip for an instance"
  default     = true

}

variable "enable_dns_support" {
    type = bool
    description = "enable dns support"
    default = true
  
}

