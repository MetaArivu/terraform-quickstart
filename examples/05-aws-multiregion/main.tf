resource "aws_instance" "ariu-EC2-dev" {
    ami = var.ami
    instance_type = "t2.micro"
    tags = {
        Name = "ariu-EC2-dev"
    }
}
resource "aws_instance" "ariu-EC2-prod" {
    ami = var.ami
    instance_type = "t2.micro"
    tags = {
        Name = "ariu-EC2-prod"
    }
   provider = aws.prod
}

