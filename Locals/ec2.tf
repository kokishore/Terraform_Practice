resource "aws_instance" "roboshop" {
  ami                    = "ami-0220d79f3f480ecf5"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = merge(
    local.ec2_tags,
    {
      Name      = local.fina_name
      Component = var.component
    }
  )
}
resource "aws_security_group" "allow_all" {
  name        = "${local.fina_name}-sg"
  description = "Allow all traffic for ${local.fina_name}"

    ingress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

  tags = merge(
    local.ec2_tags,
    {
      Name = "${local.fina_name}-sg"
    }
  )
}
