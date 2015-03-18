namespace :db do
  desc "Clear the DB and fill with excellent sample data"
  task :populate => :environment do
    require 'populator'
    require 'faker'

    # Clear out the old junk
    [Category, Resource, User].each(&:destroy_all)

    # Add category and resources
    Category.populate 30 do |category|
      category.name = Faker::Commerce.department
      category.description = Faker::Company.bs
      Resource.populate 10..100 do |resource|
        resource.category_id = category.id
        resource.title = Faker::App.name
        resource.link = Faker::Internet.url
        resource.notes = Faker::Hacker.say_something_smart
      end
    end

    # Add some users
    User.populate 10 do |user|
      user.email = Faker::Internet.email
      user.sign_in_count = 1..100
      user.encrypted_password = Faker::Number.number(10)
    end

    puts "BOOYA!  Done Son!"
  end
end