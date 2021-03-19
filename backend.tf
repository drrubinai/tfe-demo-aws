terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "demos-sentinel"

    workspaces {
      name = "tfe-demo-aws"
    }
  }
}