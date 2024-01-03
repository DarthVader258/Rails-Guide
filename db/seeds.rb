# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# user = User.create(
#   full_name: "Anirudh Mukati",
#   contact_number: "8945326710",
#   email: "anirudh@example.com",
#   password: "123456",
#   password_confirmation: "123456"
#   )

# user = user.new(
#   full_name: "Surya Pratap Singh Thakur",
#   contact_number: "7856324910",
#   email: "surya@example.com",
#   password: "123456",
#   password_confirmation: "123456"
#   )
# user.save

# 10.times do |i|
#   puts "Creating User #{i+1}"
#   User.create(
#     full_name = "User #{i+1}",
#     contact_number = "Contact #{i+1}",
#     email = "Email user#{i+1}@example.com",
#     password = "Password #{i+1}",
#     password_confirmation = "Password Confirmation #{i+1}"
#     )
# end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# user = User.create(
#   full_name: "Anirudh Mukati",
#   contact_number: "8945326710",
#   email: "anirudh@example.com",
#   password: "123456",
#   password_confirmation: "123456"
#   )

# user = user.new(
#   full_name: "Surya Pratap Singh Thakur",
#   contact_number: "7856324910",
#   email: "surya@example.com",
#   password: "123456",
#   password_confirmation: "123456"
#   )
# user.save

# 10.times do |i|
#   puts "Creating User #{i+1}"
#   User.create(
#     full_name = "User #{i+1}",
#     contact_number = "Contact #{i+1}",
#     email = "Email user#{i+1}@example.com",
#     password = "Password #{i+1}",
#     password_confirmation = "Password Confirmation #{i+1}"
#     )
# end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# user = User.create(
#   full_name: "Anirudh Mukati",
#   contact_number: "8945326710",
#   email: "anirudh@example.com",
#   password: "123456",
#   password_confirmation: "123456"
#   )

# user = user.new(
#   full_name: "Surya Pratap Singh Thakur",
#   contact_number: "7856324910",
#   email: "surya@example.com",
#   password: "123456",
#   password_confirmation: "123456"
#   )
# user.save

# 10.times do |i|
#   puts "Creating User #{i+1}"
#   User.create(
#     full_name = "User #{i+1}",
#     contact_number = "Contact #{i+1}",
#     email = "Email user#{i+1}@example.com",
#     password = "Password #{i+1}",
#     password_confirmation = "Password Confirmation #{i+1}"
#     )
# end

question_data = [
  {title: "What is the difference between has_many :through and has_and_belongs_to_many? Also state which one is better?", keyword: "Rails", is_premium: "False", answer: "Rails"},
  {title: "What are validations in rails? At what moments of an object's lifecycle validations are checked?", keyword: "Rails", is_premium: "False", answer: "Rails"},
  {title: "What do you mean by polymorphic association in rails? When can one use this association?", keyword: "Rails", is_premium: "False", answer: "Rails"},
  {title: "What are scopes in Rails?", keyword: "Rails", is_premium: "False", answer: "Rails"},
  {title: "What is the difference between class methods and scopes? Are they similar", keyword: "Ruby", is_premium: "False", answer: "Ruby"},
  {title: "What do you mean by ActiveRecord callbacks? Explain some ActiveRecord callbacks.", keyword: "Rails", is_premium: "False", answer: "Rails"},
  {title: "How can you define custom validations in rails?", keyword: "Rails", is_premium: "False", answer: "Rails"},
  {title: "What do you mean by STI(single table inheritance)? What are its advantages and disadvantages?", keyword: "Ruby", is_premium: "False", answer: "Ruby"},
  {title: "What do you mean by migrations in Rails? What is the usage of rails migrations?", keyword: "Rails", is_premium: "False", answer: "Rails"},
  {title: "What do you mean by N+1 query? How can you resolve N+1 query? Explain by an example.", keyword: "Rails", is_premium: "False", answer: "Rails"},
]
 
ActiveRecord::Base.transaction do
  question_data.each do |question_data|
    question = Question.create(question_data)
  end
end

plan_data = [
  {name: "Monthly", price:"2500"},
  {name: "Quarterly", price:"7500"},
  {name: "Half Yearly", price:"12500"},
  {name: "Yearly", price:"25000"},
]

ActiveRecord::Base.transaction do
  plan_data.each do |plan_data|
    plan = Plan.create(plan_data)
  end
end



