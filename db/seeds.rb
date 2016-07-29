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

staff = [
  {
    "id"=>1, "name"=>"Matt Gardner", "group_id"=>1, "position"=>3, "role"=>"Web Developer",
    "bio"=>""
  },
  {
    "id"=>2, "name"=>"Alicia Rouault", "group_id"=>1, "position"=>3, "role"=>"Digital Services Manager",
    "bio"=>"Alicia Rouault leads MAPC’s Digital Services Working Group housed within MAPC’s Data Services Department, and has expertise in government innovation, technology and data-driven decision making.\r\n\r\n**Current Activities**\r\n\r\nAs Digital Services Group Manager, Rouault oversees MAPC’s digital strategy within the agency, and across the 101 cities and towns served by MAPC. She oversees a team of technology experts that build and design web applications and other data-driven online tools, finding new and effective ways to use digital tools to enhance the quality of life in Metro Boston. She defines, documents, and executes MAPC's long-term digital product strategy and oversees product development, deployment, and user engagement of digital tools.\r\n\r\nPast Experience\r\n\r\nPrior to joining MAPC, Ms Rouault served as Senior Advisor to former United States Deputy CTO and Executive Director of Code for America, Jennifer Pahlka. There she advised the senior leadership team on internal strategy, fundraising, government relations, strategic initiatives, event development, technology research and measuring community engagement outcomes.\r\n\r\nRouault is formerly CEO and co-founder of software company, LocalData, an interactive firm that builds digital tools for urban planners. Rouault continues to work at the intersection of technology, urban planning and data-driven decision making.\r\n\r\nRouault has a background in city planning with policy expertise in Housing, Community and Economic Development. Alicia has worked with MIT's Civic Data Design Lab on data-driven urban planning for resiliency, economic opportunity and transit within the Center for Advanced Urbanism; and on the design and economics of innovation districts at MIT Media Lab City Science Group.\r\n\r\nRouault has also worked extensively in the field of Government Innovation. Rouault has led the design and creation of a 9-county data portal and resource for the Metropolitan Transportation Commission (MTC) called Vital Signs, and countless mapping interfaces and tools documenting vacant property and walkability in Pittsburgh, PA, Denver, CO and Gary, Indiana.\r\n\r\nIn 2012, Rouault worked with the City of Detroit’s Mayors Office under Karla Henderson, former Group Executive of Planning and Buildings in Detroit. There, her team designed and deployed TextMyBus (an app that delivers real-time bus schedule information) still used by thousands of Detroiters daily, as well as an early version of the LocalData tool.\r\n\r\nRouault began her career in Community and Economic Development working with the City of Newark’s Division of Planning and Economic Development, Pratt Center for Community Development and Citizens Committee for New York City. She entered the world of technology and data through digital journalism as Assistant Editor of Urban Omnibus at the Architectural League of New York. There, she wrote and curated content showcasing the work of urban planners, citizens, designers and technologists on city systems."
  },
  {
    "id"=>3, "name"=>"Matt Cloyd", "group_id"=>1, "position"=>4, "role"=>"Web Developer",
    "bio"=>"Mr. Cloyd builds web applications to help community members and planners visualize, map, and effectively use data.\r\n\r\n**Past Experience\r\n**\r\nPrior to joining MAPC, Cloyd was formerly the Director of the Sustainable Living Center at Dartmouth College, which educated students and community members on sustainable living practices, climate change & clean energy policy, and environmental justice.\r\n\r\n**Education and Professional Affiliations\r\n**\r\nMr. Cloyd holds a B.A. in Geography from Dartmouth College, where he studied urban geography, social justice, and Geographic Information Systems. He is an active member of Code for Boston, the local branch of Code for America, which enables developers to build applications and services to improve civic life.\r\n\r\n**Areas of Expertise\r\n**\r\nWeb development, Geographic Information Systems (GIS), data visualization, open data, sustainable design"
  }
  {
    "id"=>7, "name"=>"Manisha Bewtra", "group_id"=>3, "position"=>0, "role"=>"Analytical Services Manager",
    "bio"=>""
  },
  {
    "id"=>8, "name"=>"Eliza Wallace", "group_id"=>3, "position"=>nil, "role"=>"GIS Analyst",
    "bio"=>""
  },
  {
    "id"=>9, "name"=>"Cortni Kerr", "group_id"=>3, "position"=>nil, "role"=>"GIS Intern",
    "bio"=>"Current Activities\r\n\r\nCortni provides mapping and analysis for MAPC planning projects and data requests.\r\n\r\n**Past Experience**\r\n\r\nPrior to joing MAPC, Cortni served as a Communications and Operations Specialist for the Project on Middle East Political Science at the George Washington University. Her work there included editing articles for the Washington Post's Monkey Cage blog, writing two successful grant proposals to secure $1.2 million in funding to extend the project, and organizing lectures and conferences.\r\n\r\nAt the E-Collaborative for Civic Education Cortni served as a Project Coordinator and Consultant, developing strategy and overseeing programs related to technology and human rights.\r\n\r\nCortni has also served as a team leader for Back on My Feet, an organization that combats homelessness through the power of running, community support, and essential employment and housing resources.\r\n\r\n**Education and Professional Affiliations**\r\n\r\nCortni is currently working toward her Master in City Planning at the Massachusetts Institute of Technology. She holds a Bachelor of Arts from Williams College in Arabic Studies and History, for which she studied abroad at the American University in Cairo in 2008.\r\n\r\nAdditionally, she holds a Graduate Certificate in Geographic Information Systems from the George Washington University."
  }
]

staff.each do |attrs|
  s = Staff.new attrs
  s.save!(validate: false)
end
