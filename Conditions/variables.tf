variable "ami_id" {
  type        = string
  default     = "ami-0220d79f3f480ecf5"
  description = "AMI ID of the RHEL9 DevOps Practice"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "ec2_tags" {
    type   = map(string)
    default = {
        Name = "Kishore_Instance"
        Purpose = "practise"
    }
}

variable "sg_name" {
    default = "allow_all"
    
}

variable "sg_description" {
    default = "allowing all traffic"
}

variable "from_port" {
    default = 0
}

variable "to_port" {
    default = 0
}

variable "cidr_blocks" {
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    default = {
        Name = "allow-all"
    }
}

variable "environment" {
    default = "dev"
}