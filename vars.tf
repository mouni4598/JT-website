variable "REGION" {
  default = "us-east-1"
}

variable "ZONE1" {
  default = "us-east-1a"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-2 = "ami-0c7217cdde317cfec"
    us-east-1 = "ami-06aa3f7caf3a30282"
  }
}

variable "USER" {
  default = "ubuntu"
}
