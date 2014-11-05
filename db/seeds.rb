# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

items = Item.create([
  {name: "Vest1", category: "chest gear", type: "vest", price: 79.99}, 
  {name: "Plate Carrier1", category: "chest gear", type: "plate carrier", price: 159.99}, 
  {name: "Chest Rig1", category: "chest gear", type: "chest rig", price: 99.99}, 
  {name: "Magazine Pouch1", category: "pouches", type: "magazine pouch", price: 11.99}, 
  {name: "Dump Pouch 1", category: "pouches", type: "dump pouch", price: 19.99}, 
  {name: "Utility Pouch 1", category: "pouches", type: "utility pouch", price: 14.99}, 
  {name: "Battle Belt1", category: "belts", type: "battle belt", price: 79.99}, 
  {name: "Tactical Belt1", category: "belts", type: "tactical belt", price: 29.99}, 
  {name: "Helmet1", category: "head gear", type: "helmet", price: 99.99}, 
  {name: "Hat1", category: "head gear", type: "hat", price: 14.99}, 
  {name: "Mask1", category: "head gear", type: "mask", price: 19.99}])