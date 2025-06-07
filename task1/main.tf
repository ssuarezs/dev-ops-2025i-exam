terraform {
    required_providers {
        github = {
            source  = "integrations/github"
            version = "~> 5.0"
        }
    }
}

provider "github" {
    token        = var.github_token
    organization = var.github_organization
}

resource "github_repository" "example" {
    name        = var.repository_name
    description = "New repository"
    visibility  = "public"
    auto_init   = true
}

resource "github_branch" "new_branch" {
    repository = github_repository.example.name
    branch     = var.branch_name

    depends_on = [github_repository.example]
}

resource "github_team" "example_team" {
    name        = var.team_name
    description = "Team for managing the repository"
}

resource "github_team_repository" "team_repo" {
    team_id    = github_team.example_team.id
    repository = github_repository.example.name
    permission = "push"

    depends_on = [github_repository.example, github_team.example_team]
}

resource "github_repository_collaborator" "collaborator" {
    repository = github_repository.example.name
    username   = var.collaborator_username
    permission = "push"

    depends_on = [github_repository.example]
}
