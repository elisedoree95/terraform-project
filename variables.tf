variable "region" {
  type    = string
  default = "us-east-1"
}

variable "ami" {
  type    = string
  default = "ami-045269a1f5c90a6a0"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "vpc_security_group_id" {
  type    = string
  default = "sg-0bf772cfe44c007a2"
}

variable "subnet_id" {
  type    = string
  default = "subnet-028be42059578e952"
}

variable "bucket_name" {
  type    = string
  default = "elise-metroc-0114"
}