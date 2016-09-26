require 'faker'

Dir["./app/models/*.rb"].each do |file|
  require file
end

50.times do |n|
  street_address = Faker::Address.street_address
  city           = Faker::Address.city
  state          = Faker::Address.state
  zip            = Faker::Address.zip

  Address.create!(street_address: street_address,
                  city:           city,
                  state:          state,
                  zip:            zip)
end

50.times do |n|
  phone_number             = Faker::PhoneNumber.phone_number 
  preferred_contact_method = "phone"
  address_id               = n

  Family.create!(phone_number:             phone_number,
                 preferred_contact_method: preferred_contact_method,
                 address_id:               address_id)
end

50.times do |n|
  first_name = Faker::Name.first_name
  last_name  = Faker::Name.last_name
  email      = Faker::Internet.email
  family     = Family.find(n + 1)
  phone      = family.phone_number
  family.guardians.create!(first_name:           first_name,
                         last_name:              last_name,
                         email:                  email,
                         phone:                  phone,
                         relationship_to_child: "parent")
end

50.times do |n|
  family        = Family.find(n + 1) 
  first_name    = Faker::Name.first_name
  last_name     = family.guardians.first.last_name
  birthday      = Faker::Date.backward(1200)
  potty_trained = [true, false].sample
  potty_training_notes = nil
  allergies     = false
  family.children.create!(first_name:           first_name,
                          last_name:            last_name,
                          birthday:             birthday,
                          potty_trained:        potty_trained,
                          potty_training_notes: potty_training_notes,
                          allergies:            allergies)
end

10.times do |n|
  street_address = Faker::Address.street_address
  city           = Faker::Address.city
  state          = Faker::Address.state
  zip            = Faker::Address.zip

  address = Address.create!(street_address: street_address,
                            city:           city,
                            state:          state,
                            zip:            zip)

  name = [Faker::Beer.malts,Faker::Beer.hop,Faker::Beer.name].flatten.sample
  venue = Venue.new(name: "#{name} Brewery")
  address.venue = venue
  venue.save!
end

