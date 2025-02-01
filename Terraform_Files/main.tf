provider "aws" {
    region = var.aws_region
}

resource "aws_instance" "web_server" {
    ami=var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    security_groups = [aws_security_group.web_sg.name]

    tags = {
    Name= "Ansible-Terraform-webserver"
}
}

resource "aws_security_group" "web_sg" {
    name_prefix = "web_sg"

    ingress = {
        from_port=22
        to_port=22
        protol="tcp"
        cidr_blocks=["0.0.0.0/0"]
    }

    ingress = {
        from_port=80
        to_port=80
        protol="tcp"
        cidr_blocks=["0.0.0.0/0"]
    }

    egress = {
        from_port=0
        to_port=0
        protol="-1"
        cidr_blocks=["0.0.0.0/0"]
    }
  
}

