provider "github" {
  token = var.gh_token #your token goes here
  # if needed organization = "terraform-example"
}

resource "github_repository" "for_oracle" {
  name        = "example-devops-pipeline"
  description = "An A to Z example build of a devops pipeline"

  private = false
}
