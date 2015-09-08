namespace :db do
  desc "Initialize db sample date"
  task init: :environment do
    user = User.new(name: "Example User", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar")
    user.save
    puts "Create mis-al user"
    User.create(name: 'mis-al', email: "aleksandr.misyura@gmail.com",
                     password: "foobar", password_confirmation: "foobar")
    
  end

end
