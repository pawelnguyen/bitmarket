Fabricator(:user) {
  email { sequence(:email) {|i| "email#{i}@example.com" } }
  password 'password'
}
