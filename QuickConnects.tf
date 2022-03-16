terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "cxlab"
  region  = "eu-west-2"
}
resource "aws_connect_quick_connect" "test-1" {
  instance_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxx"
  name        = "Sayeed Terraform Quick Connect"
  description = "Phone number Quick Connect created via terraform"

  quick_connect_config {
    quick_connect_type = "PHONE_NUMBER"

    phone_config {
      phone_number = "+44123456789"
    }
  }
}
resource "aws_connect_quick_connect" "test-2" {
  instance_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxx"
  name        = "Sayeed Terraform Quick Connect 2"
  description = "Agent Quick Connect created via terraform"

  quick_connect_config {
    quick_connect_type = "USER"

    user_config {
      contact_flow_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxx"
      user_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
    }
  }
}
resource "aws_connect_quick_connect" "test-3" {
  instance_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxx"
  name        = "Sayeed Terraform Quick Connect 3"
  description = "Queue Quick Connect created via terraform"

  quick_connect_config {
    quick_connect_type = "QUEUE"

    queue_config {
      contact_flow_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxx"
      queue_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
    }
  }
}
