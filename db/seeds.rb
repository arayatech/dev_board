# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Characte#r.create(name: 'Luke', movie: movies.first)

User.destroy_all
Job.destroy_all

admin = User.new(email: "chris@example.com", password: "password", password_confirmation: "password", admin: true,
                 developer: true, employer: true)
admin.skip_confirmation!
admin.save

developer = User.new(email: "developer@example.com", password: "password", password_confirmation: "password",
                     admin: false, developer: true, employer: false)
developer.skip_confirmation!
developer.save

employer = User.new(email: "employer@example.com", password: "password", password_confirmation: "password",
                    admin: false, developer: false, employer: true)
employer.skip_confirmation!
employer.save

Job.create!(
  id: 1,
  company_name: "Safaricom",
  company_website: "https://safaricom.com",
  compensation_range: "170,000 - 180,000",
  compensation_type: "Full-time",
  estimated_hours: nil,
  featured: false,
  featured_until: nil,
  headquarters: "California",
  link_to_apply: "https://safaricom.com/apply",
  price: 199,
  published_at: DateTime.now,
  remote: false,
  slug: "rails-developer-at-safaricom",
  status: "published",
  title: "Rails developer at Safaricom",
  upsell_type: nil,
  years_of_experience: "5",
  user_id: admin.id,
  description: Faker::Hipster.paragraph,
  company_description: Faker::Hipster.paragraph
)

Job.create!(
  id: 2,
  company_name: "Andela",
  company_website: "https://andela.com",
  compensation_range: nil,
  compensation_type: "Contract",
  estimated_hours: "more than 100",
  featured: true,
  featured_until: 1.week.from_now.beginning_of_day,
  headquarters: "California",
  link_to_apply: "https://andela.com/apply",
  price: 299,
  published_at: DateTime.now,
  remote: true,
  slug: "ruby-developer-at-andela",
  status: "published",
  title: "Ruby developer at Andela",
  upsell_type: "best",
  years_of_experience: "5",
  user_id: employer.id,
  description: Faker::Hipster.paragraph,
  company_description: Faker::Hipster.paragraph
)

Job.create!(
  id: 3,
  company_name: "EABL",
  company_website: "https://eabl.com",
  compensation_range: "240,000 - 250,000",
  compensation_type: "Full-time",
  estimated_hours: nil,
  featured: false,
  featured_until: nil,
  headquarters: "California",
  link_to_apply: "https://eabl.com/apply",
  price: 199,
  published_at: DateTime.now,
  remote: false,
  slug: "ruby-developer-at-eabl",
  status: "published",
  title: "Ruby developer at EABL",
  upsell_type: nil,
  years_of_experience: "8",
  user_id: employer.id,
  description: Faker::Hipster.paragraph,
  company_description: Faker::Hipster.paragraph
)
