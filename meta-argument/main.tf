/*
count = 2
depends_on = 
for_each
lifecycle

provider "aws" {
    region = "us-east-1"
  
}
/*
resource "aws_instance" "s1" {
    count = 1
    ami = "ami-085ad6ae776d8f09c"
    instance_type = "t2.micro"

    tags = {
        Name = "dev-server ${count.index +1}"
    }
}

resource "aws_iam_user" "us1" {
    name = "cloudadmin"
    depends_on = [ aws_instance.s1 ] //list
}

output "ip" {
    value = aws_instance.s1[*].public_ip
  
}


variable "typeofinstance" {
    type = list(string)
    default = ["t2.micro", "t3.small"]
}

variable "info" {
    //dev = map(string)
    default = {
    dev = {ami: "ami-085ad6ae776d8f09c", instance: "t2.micro"}
    qa = {ami: "ami-085ad6ae776d8f09cxyz", instance: "t2.micro"}
}
  
}
/*
resource "aws_instances" "s2" {
    for for_each = toset(var.typeofinstance)
    ami = "ami-085ad6ae776d8f09c"
    instance_type = each.key
  
} 

resource "aws_instances" "s2" {
    for for_each = var.info
    ami = each.key[ami]
    instance_type = each.key[instance]

    tags = {
        name = each.key
    }
    */

    provider "aws" {
        region = var.region

    }
    variable "region" {
        description = "value of region"
        type = string
        sensitive = true
       // default = "us-east-1"
    }
    