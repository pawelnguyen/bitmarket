Fabricator(:user) {
  email { sequence(:email) { |i| "email#{i}@example.com" } }
  password 'password'
}

Fabricator(:full_user, from: :user) {
  wallet { Fabricate.build(:wallet) }
  after_create do |user|
    user.offers = [Fabricate(:offer, user: user), Fabricate(:offer, user: user)]
    user.save
  end
}