variable "private_subnet_count" {
  type    = number
  default = 6

}

variable "public_subnet_count" {
  type    = number
  default = 6

}

variable "availability_zones" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1e", "us-east-1f"]

}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default = [
    "10.105.1.0/24",
    "10.105.2.0/24",
    "10.105.3.0/24",
    "10.105.4.0/24",
    "10.105.5.0/24",
    "10.105.6.0/24"
  ]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default = [
    "10.105.200.0/24",
    "10.105.201.0/24",
    "10.105.202.0/24",
    "10.105.203.0/24",
    "10.105.204.0/24",
    "10.105.205.0/24"
  ]
}

