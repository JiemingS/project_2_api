# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# name,damage,toughness,crowd_control,mobility,attack_range

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'league_of_legends_heros.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Hero.new
  t.name = row['name']
  t.hero_id = row['hero_id']
  t.damage = row['damage']
  t.toughness = row['toughness']
  t.crowd_control = row['crowd_control']
  t.mobility = row['mobility']
  t.attack_range = row['attack_range']
  t.damage_type = row['damage_type']
  t.save
  # puts "#{t.name}, #{t.damage} saved"
  puts "#{t.persisted?}" # should be true, or false if it didn't save...
  puts "#{t.errors.messages}"
  puts "#{t.id}" # ID of the new hero
end

# puts "There are now #{Transaction.count} rows in the transactions table"
