# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

file_name = Rails.root.join("db","data","regis.json")
#this you will get the long string
json_string = File.read(file_name)

json = JSON.parse(json_string)

json.each do |data|
  poi = Poi.new
  poi.subj = data['Subject']
  poi.instruc = data['Instructor']
  poi.tm = data['Time']
  poi.rm = data['Room']
  poi.save!
end
