terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami                    = "ami-045269a1f5c90a6a0"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-09ead194696b4c2cd", "sg-0bf772cfe44c007a2"]
  subnet_id              = "subnet-028be42059578e952"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

resource "aws_instance" "web_server" {
  ami                    = "ami-045269a1f5c90a6a0"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-09ead194696b4c2cd", "sg-0bf772cfe44c007a2"]
  subnet_id              = "subnet-028be42059578e952"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "elise-metroc-0114"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = "aws_s3_bucket.mybucket.id"
  versioning_configuration {
    status = "Enabled"
  }
}
  