resource "aws_instance" "example_instance" {
  ami           = "ami-0451f2687182e0411"
  instance_type = "t2.micro"
  key_name      = "sample"
  count         = 1
  tags = {
    Name = "server"
  }
  
  vpc_security_group_ids = [aws_security_group.example_sg.id]
  user_data               = file("server.sh")
}

