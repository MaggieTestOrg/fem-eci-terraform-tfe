locals {
  project = {
    "fem-eci-project" = {
      description = "Example description of project"
    }
  }
  workspace = {
    "fem-eci-tfe" = {
      description        = "Workspace for terraform stuff"
      execution_mode     = "remote"
      project_id         = module.project["fem-eci-project"].id
      vcs_repo_identifer = "${var.github_organization_name}/fem-eci-terraform-tfe"
    }
    "fem-eci-github" = {
      description        = "Workspace for github stuff"
      execution_mode     = "remote"
      project_id         = module.project["fem-eci-project"].id
      vcs_repo_identifer = "${var.github_organization_name}/fem-eci-terraform-github"
    }
  }
}
