user = User.create! name: "melanie", email: "melanie@example.com", password: "letmeinplease"
puts "User created: #{user.email} with password #{user.password}"