provider "aws" {
     
}
/*
data "aws_instance" "d1" {
  instance_id = "i-0e8b735ac90504891"
}

resource "aws_instance" "server1" {
    ami = data.aws_instance.d1.ami
    instance_type = data.aws_instance.d1.instance_type
    availability_zone = data.aws_instance.d1.availability_zone
  
}
*/

data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "^myami-[0-9]{3}"
  owners           = ["self"]

  filter {
    name   = "name"
    values = ["myami-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_inst`" "server2" {

  
}