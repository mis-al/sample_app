namespace :my_namespace do
  desc "Делай что-то!!!"
  task my_task1: :environment do
    puts "Что-то делаем впервые! :)"
  end

  desc "Давайте еще раз что-то сделаем!!!"
  task my_task2: :environment do
    puts "Что-то делаем второй раз! =)"
  end

end
