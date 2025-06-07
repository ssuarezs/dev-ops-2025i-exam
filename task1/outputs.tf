output "repository_url" {
    value = github_repository.example.html_url
}

output "branch_name" {
    value = github_branch.new_branch.branch
}

output "team_id" {
    value = github_team.example_team.id
}

output "collaborator_username" {
    value = github_repository_collaborator.collaborator.username
}
