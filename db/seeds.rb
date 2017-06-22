# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
user1 = User.create(user_name: "gilly", password_digest: BCrypt::Password.create("abc123"), session_token: SecureRandom.urlsafe_base64)
user2 = User.create(user_name: "tilly", password_digest: BCrypt::Password.create("asc123"), session_token: SecureRandom.urlsafe_base64)
user3 = User.create(user_name: "silly", password_digest: BCrypt::Password.create("adc123"), session_token: SecureRandom.urlsafe_base64)
