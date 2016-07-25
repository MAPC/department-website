# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts '----> Creating a service.'
Service.create!({
  "id"         => 18,
  "title"      => "Data Development",
  "desc"       => "We create, collect, and add value to data for use in planning work. \r\n\r\n\r\nOur data comes from federal, state and local sources that we clean it, store it, and transform into accessible data products.",
  "group_id"   => 2,
  "position"   => 1
})

puts '----> Creating the groups.'
groups = [
  {"id"=>2, "title"=>"Research", "desc"=>"The Research group performs data collection and analysis to provide insight on the past, present, and future of Metro Boston. We explore emerging issues through data and mapping, and produce projections that help planners and policymakers make informed decisions about the future of our region.", "tagline"=>"Data collection and analysis to produce insight on the past, present, and future of Metro Boston", "position"=>1},
  {"id"=>1, "title"=>"Digital", "desc"=>"We build open, equitable, and data-driven tools that drive informed decision-making. We use human-centered design to make complex information understandable and accessible.", "tagline"=>"Design and development of digital tools to support data-driven planning across Metro Boston", "position"=>2},
  {"id"=>3, "title"=>"Analytical", "desc"=>"The Analytical Services Group connects Greater Boston with the best available data for local and regional planning. We collaborate with our MAPC colleagues and external partners to turn that data into insights about the past, present, and future of our 101 cities and towns. ", "tagline"=>"Supporting data-driven decision-making in planning processes and collaborating with partners to turn data into insights", "position"=>3}
]

groups.each { |attrs| Group.create! attrs }
