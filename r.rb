system "rake db:drop db:create db:migrate db:seed"
puts "Done Raking"
system "rails s"