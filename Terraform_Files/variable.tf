variable "aws_region" {
    description = "default free tier region"
    default = "us-east-1"
}

variable "instance_type" {
    description = "aws t2 micro instance free instance"
    default = "t2.micro"
}

variable "ami_id" {
    default = "ami-04b4f1a9cf54c11d0"
  
}

variable "key_name" {
    description = "login with key-pair"
    default = "new_key"
}