variable "repository_name" {
  description = "The name of the GitHub repository"
  type        = string
}

variable "branch_name" {
  description = "The name of the branch to create"
  type        = string
}

variable "team_name" {
  description = "The name of the GitHub team"
  type        = string
}

variable "collaborator_username" {
  description = "The GitHub username of the collaborator"
  type        = string
}

variable "github_token" {
  description = "The GitHub personal access token. Should be kept secret."
  type        = string
  sensitive   = true
}

variable "github_organization" {
  description = "The name of the GitHub organization to manage."
  type        = string
}
