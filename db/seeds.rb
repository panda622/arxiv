user = User.new(
  email: 'test@test.com',
  password: '123456',
  password_confirmation: '123456'
)
user.save!
