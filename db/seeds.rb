# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Player.create(name: "Bomber")
Player.create(name: "MVP")
Player.create(name: "MC")
Player.create(name: "TLO")
Player.create(name: "Hero")
Player.create(name: "Idra")
Player.create(name: "HyuN")
Player.create(name: "Scarlett")



Match.create(winner_faction: "protoss", loser_faction: "terran", date: Date.new, winner_id: 3, loser_id:1)
Match.create(winner_faction: "terran", loser_faction: "zerg", date: Date.new + 1.day, winner_id: 1, loser_id:6)
Match.create(winner_faction: "zerg", loser_faction: "protoss", date: Date.new, winner_id: 4, loser_id:5)
