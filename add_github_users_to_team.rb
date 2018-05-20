# This is still a WIP

# require 'octokit'
# require 'github_api'

# client = Octokit::Client.new(
#   login: ENV['GITHUB_HANDLE'],
#   password: ENV['GITHUB_PASSWORD']
# )

# client = Octokit::Client.new \
#   login: ENV['GITHUB_HANDLE'],
#   password: ENV['GITHUB_PASSWORD']

# client.create_authorization(:scopes => ["user"], :note => "cli_token",
#                             :headers => { "X-GitHub-OTP" => ENV['GITHUB_OAUTH'] })
# puts client
# client = Octokit::Client.new(
#   login: ENV['GITHUB_HANDLE'],
#   password: ENV['GITHUB_PASSWORD']
# )

# client.create_authorization(:scopes => ["nuclearnic"], :note => "Name of token",
#   :headers => { "X-GitHub-OTP" => "123279" })

# puts 'xxxx'
# puts client

# user = client.user
# user.login
# puts user
# => "defunkt"
