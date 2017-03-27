provider "aws" {
  access_key 	= "AKIAIGFCOTO7XYLSRJ5A"
  secret_key 	= "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"
  region	= "us-west-1"
}


resource "aws_instance" "master1" {
  ami		= "ami-af4333cf"
  instance_type = "t2.micro"
  key_name	= "tammuz-key.pem"
  tags {
    Name = "master1"
  }
}

#resource "aws_instance" "master2" {
#  ami		= "ami-af4333cf"
#  instance_type = "t2.micro"
#  tags {
#    Name = "master2"
#  }
#}

#resource "aws_instance" "worker1" {
#  ami		= "ami-af4333cf"
#  instance_type = "t2.micro"
#  tags {
#    Name = "worker1"
#  }
#}

#resource "aws_instance" "worker2" {
#  ami		= "ami-af4333cf"
#  instance_type = "t2.micro"
#  tags {
#    Name = "worker2"
#  }
#}
