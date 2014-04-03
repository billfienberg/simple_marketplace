# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Add 3 buyers
Buyer.create(name:"Bill", email:"abc@123.com")
Buyer.create(name:"Todd", email:"def@456.com")
Buyer.create(name:"Matt", email:"xyz@789.com")

# Add 3 sellers
Seller.create(name:"Bill", email:"abc@123.com")
Seller.create(name:"Todd", email:"def@456.com")
Seller.create(name:"Matt", email:"xyz@789.com")

# Add 4 items
Seller.first.items.create(name: "water bottle", description: "Bubba", price: 10.75, organization_id: 1)
Seller.first.items.create(name: "Backpack", description: "Jansport", price: 7.80, organization_id: 2)
Seller.find(2).items.create(name: "car", description: "Ferrari", price: 60000.00, organization_id: 2)
Seller.last.items.create(name:"computer", description:"Macbook Air", price: 1400, organization_id: 3)

# Add 3 Organizations
Organization.create(name:"Austin Pets Alive")
Organization.create(name:"Connect2Good")
Organization.create(name:"Yellow Bike Project")
