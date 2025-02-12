provider "aws" {
    region = "us-east-1"
  
}

import {
  to = aws_instance.web
  id = "i-014fe5415d33c01b8"
}

