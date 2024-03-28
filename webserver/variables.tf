variable "sub" {
  
}

variable "sg" {
  
}

variable "instance_type" {
    type = string
    description = "instance type of ec2 instance"
    default = "t2.micro"
  
}

variable "ami" {
    type = string
    description = "image ami of a ec2 instance"
    default = "ami-051f7e7f6c2f40dc1"
}