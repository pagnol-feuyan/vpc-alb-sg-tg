
resource "aws_instance" "web" {
  ami                                  = "ami-085ad6ae776d8f09c"
  associate_public_ip_address          = false
  availability_zone                    = "us-east-1c"
  instance_type                        = "t2.micro"
  key_name                             = "windows_server"
  monitoring                           = false
  subnet_id                            = "subnet-0b6f744c2c5805f59"
  tags = {
    Name = "terraformImp2"
  }
  vpc_security_group_ids      = ["sg-0bc9f45062ab4dab0"]
}
  