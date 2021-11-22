resource "aws_instance" "server1" {
  ami                         = var.ami_id
  instance_type               = var.instance_type 
  subnet_id                   = aws_subnet.subnet1.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.allow_http_ssh.id] #se cambio el security group
  private_ip                  = "172.16.9.0" #se cambio la ip
  key_name                    = var.key1 #se agrego var
  user_data                   = file("user-data.sh")

  tags = {
    Name        = "server-1"
    Owner       = "student_9"
    Environment = "develop"
    OS          = "amazon-linux"
  }
}