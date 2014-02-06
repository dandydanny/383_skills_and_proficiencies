require 'faker'

# create a few users
User.create :name => 'Dev Bootcamp Student', :email => 'me@example.com', :password => 'password'
5.times do
  User.create :name => Faker::Name.name, :email => Faker::Internet.email, :password => 'password'
  # Associate some skills to users
  2.times do
    user.proficiencies.create(skill_id: rand(1..14), years_of_experience: rand(1..5), education: [true, false].sample)
  end
end

# create a few technical skills
computer_skills = %w(Ruby Sinatra Rails JavaScript jQuery HTML CSS)
computer_skills.each do |skill|
  Skill.create :name => skill, :context => 'technical'
end

# create a few creative skills
design_skills = %w(Photoshop Illustrator Responsive-Design)
design_skills.each do |skill|
  Skill.create :name => skill, :context => 'creative'
end

# create a few craft skills
make_skills = %w(Sewing Welding Woodworking Sculpting)
make_skills.each do |skill|
  Skill.create :name => skill, :context => 'craft'
end

# Few ways to setup associations between users and skills
# User.find(1).proficiencies << Proficiency.create(:experience => 2, :education => true)
# User.find(2).proficiencies << Proficiency.create(skill_id: Skill.first.id, experience: 4, education: true)
# User.first.proficiencies << Proficiency.create(skill_id: 1, experience: 2, education: true)
# user.proficiencies.create(skill_id: 3, experience: 2, education: true)

