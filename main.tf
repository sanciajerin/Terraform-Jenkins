provider "aws" {
  region = "us-east-1" # You can change this to your preferred AWS region
}

# Create an EC2 instance
resource "aws_instance" "my_ec2" {
  ami           = "ami-04a81a99f5ec58529" # Example AMI, you should update this with a valid AMI for your region
  instance_type = "t2.micro" # Specify the instance type
  vpc_security_group_ids = ["sg-00e3c9cc3e6996a4a"]

  tags = {
    Name = "MyEC2Instance"
  }
}

# Create an S3 bucket
resource "aws_s3_bucket" "my-jerryparakode1993-bucket" {
  bucket = "my-jerryparakode1993-bucket"


  tags = {
    Name = "My-S3-Bucket"
  }
}
