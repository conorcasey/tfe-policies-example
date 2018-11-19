workflow "Sentinel" {
  resolves = "sentinel-test"
  on = "pull_request"
}

# action "filter-to-pr-open-synced" {
#   uses = "docker://superbbears/filter:0.2.0"
#   args = ["action", "opened|synchronize"]
# }

action "sentinel-test" {
  uses = "thrashr888/sentinel-github-actions/test@v0.1"
#   needs = "filter-to-pr-open-synced"
  secrets = ["GITHUB_TOKEN"]
  env = {
    TF_ACTION_WORKING_DIR = "."
  }
}
