resource "aws_instance" "server" {
  ami                    = "ami-06067086cf86c58e6"
  instance_type          = "t3.micro"
  subnet_id              = var.sn
  vpc_security_group_ids = [var.sg]

  tags = {
    Name = "myserver"
  }
}