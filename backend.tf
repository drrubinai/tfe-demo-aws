terraform {
  backend "remote" {
    hostname     = "terraform.io"
    organization = "demos-sentinel"

    workspaces {
      name = "tfe-demo-aws"
    }
  }
}