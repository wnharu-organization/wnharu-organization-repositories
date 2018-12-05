terraform {
  required_version = "0.11.10"
  backend "s3" {
    bucket = "wnharu-github-circleci"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "github" {
  organization = "wnharu-organization"
}
