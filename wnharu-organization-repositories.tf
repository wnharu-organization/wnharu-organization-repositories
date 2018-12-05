data "github_repository" "wnharu-organization-repositories" {
  name = "wnharu-organization-repositories"
}

resource "github_branch_protection" "branch_protection" {
  repository = "${data.github_repository.wnharu-organization-repositories.name}"
  branch = "master"
  enforce_admins = false

  required_status_checks {
    strict = false
    contexts = ["ci/circleci"]
  }
}