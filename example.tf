provider "aws" {
  access_key 	= "${var.access_key}"
  secret_key 	= "${var.secret_key}"
  region	= "us-west-1"
}


resource "aws_instance" "master1" {
  ami		= "ami-af4333cf"
  instance_type = "t2.micro"
#  key_name	= "bardez-california.pem"
  tags {
    Name = "master1"
  }
#  provisioner "local-exec" {
#	command = "echo ${aws_instance.master1.public_ip} > ip_address.txt"
#  }
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.master1.id}"
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
