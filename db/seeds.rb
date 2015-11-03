# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

## schema
  # create_table "categories"
    # t.string   "name"
    # t.text     "description"

Category.create!([
  {
    name: "Environment",
    description: "Cool tools for command line and/or setting up Windows and OSX environments."
  },
  {
    name: "Frameworks",
    description: "Front-end frameworks"
  },
  {
    name: "Git and Github",
    description: "Version control tools and learning links"
  },
  {
    name: "Graphics and Color",
    description: "Front-end design resources like color scheme designers, stock photos, layout design, etc."
  },
  {
    name: "Hosting",
    description: "App/webpage hosting sites"
  },
  {
    name: "HTML and CSS",
    description: "References and learning tools for HTML and CSS"
  },
  {
    name: "JavaScript and JQuery",
    description: "Tools and links for helping with JavaScript , JQuery, and related topics"
  },
  {
    name: "JSON and XML tools",
    description: "Tools for help with JSON and XML that are not Ruby gems"
  },
  {
    name: "Ruby and Rails Tools",
    description: "Not gems but other tools that are great to use with Ruby and/or Rails"
  },
  {
    name: "Ruby Gems",
    description: "Great gems for use in Ruby and Rails"
  }
])