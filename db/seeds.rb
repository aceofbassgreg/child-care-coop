require 'faker'

Dir["./app/models/*.rb"].each do |file|
  require file
end

#########Create Addresses#########
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

#########Create Families#########
50.times do |n|
  phone_number             = Faker::PhoneNumber.phone_number 
  preferred_contact_method = "phone"
  address_id               = n

  family = Family.create!(phone_number:    phone_number,
                 preferred_contact_method: preferred_contact_method,
                 address_id:               address_id)

#########Create Families' Guardians#########
  guardian_first_name = Faker::Name.first_name
  guardian_last_name  = Faker::Name.last_name
  email               = Faker::Internet.email
  phone               = family.phone_number
  family.guardians.create!(first_name:           first_name,
                         last_name:              last_name,
                         email:                  email,
                         phone:                  phone,
                         relationship_to_child: "parent")

#########Create Families' Children#########
  child_first_name     = Faker::Name.first_name
  child_last_name      = family.guardians.first.last_name
  birthday             = Faker::Date.backward(1200)
  potty_trained        = [true, false].sample
  potty_training_notes = nil
  allergies            = false
  family.children.create!(first_name:           first_name,
                          last_name:            last_name,
                          birthday:             birthday,
                          potty_trained:        potty_trained,
                          potty_training_notes: potty_training_notes,
                          allergies:            allergies)
end

#########Create Venues#########
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

#########Create Some Playgroups#########
playgroup_names = ["Watts Hillandale Tots", 
                   "Downtown Playgroup", 
                   "Pershing St. Group",
                   "Club Kiddies",
                   "Monuts for Bronuts"]
family_ids_map  = {
                    0 => (0..5).to_a,
                    1 => (4..10).to_a,
                    2 => (10..11).to_a,
                    3 => (12..14).to_a,
                    4 => (50..54).to_a
                  }

playgroup_names.each_with_index do |name, i|
  playgroup = Playgroup.create!(name: name)
  family_ids_map[i].each do |family_id|
    PlaygroupFamily.create!(family_id: family_id,
                            playgroup_id: playgroup.id)

  end
end

#########Create Care Reqeust#########

#Picking first random b/c they have a playgroup
family = Family.first
playgroup = family.playgroups.first
playgroup_id = playgroup.id
care_request = family.care_requests.create!(
  requested_start_time: Time.new(2016,12,05,"10:00:00"),
  requested_end_time: Time.new(2016,12,05,"12:00:00"),
  is_time_flexible: false,
  playgroup_id: playgroup_id
  )

#########Family 'Accepts' Care Request#########
hosting_family = playgroup.families.last
care_request.hosting_family_id = hosting_family.id
care_request.save!

#########Next, host family would create corresponding playdate#########






