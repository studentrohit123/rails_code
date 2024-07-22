# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

employee = Employee.create(
first_name: 'Ravi',
middle_name: 'kumar',
last_name: 'singh',
personal_email: 'employee@gmail.com',
city: 'Indore',
state: 'MP',
country: 'India',
pincode: '452010',
address_line_1: '315/2, malviya nager ',
address_line_2: '322/1, shital nager '
)