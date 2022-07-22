provider "aws" {
    region = "us-east-1"
    #profile = var.profile
}

resource "aws_instance" "rabbitmq" {
    ami = "ami-07ebfd5b3428b6f4d"
    instance_type = "t2.micro"
    key_name = "rabbitmq"
    vpc_security_group_ids = ["sg-0df0b704cd8cd0010"]

    tags = {
        Name = var.name
        group = var.group
    }
}