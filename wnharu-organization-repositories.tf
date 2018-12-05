data "github_repository" "repo" {
  name = "wnharu-organization-repositories"
}

resource "github_branch_protection" "branch_protection" {
  repository     = "${data.github_repository.repo.name}"
  branch         = "master"
  enforce_admins = false

  required_status_checks {
    strict   = false
    contexts = ["ci/circleci: terraform-plan"]
  }
}
