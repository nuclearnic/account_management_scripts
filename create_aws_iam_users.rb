require 'aws-sdk'
require 'securerandom'
require 'pry'

client = Aws::IAM::Client.new(
  region: 'us-east-2',
  access_key_id: ENV['AWS_ACCESS_KEY_ID'],
  secret_access_key:  ENV['AWS_SECRET_ACCESS_KEY']
)

# insert github user names here
new_users = %w[]

new_users.each do |new_user|
  password = SecureRandom.hex

  user_resp = client.create_user(
    user_name: new_user
  ).to_h

  client.create_login_profile(
    password: password,
    password_reset_required: true,
    user_name: user_resp[:user][:user_name]
  )

  client.add_user_to_group(
    group_name: 'makers',
    user_name: user_resp[:user][:user_name]
  )

  puts 'username: ' + user_resp[:user][:user_name]
  puts 'password: ' + password
end
