namespace :db do
  desc "Initialize db sample date"
  task init: :environment do
    user = User.new(name: "Example User", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar")
    user.save
  end

end
