terraform {
  backend "remote" {
    organization = "aurora"
    workspaces {
      name = "workspace"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
