user = User.new
user.email = 'test@example.foo'
user.password = 'password'
user.password_confirmation = 'password'
user.name = 'TestUser'
user.save!
10.times { FactoryBot.create(:hike, user: user) }
