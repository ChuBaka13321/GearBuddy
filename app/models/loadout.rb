class Loadout
  include Mongoid::Document
  field :name, type: String
  field :chestgear, type: String
  field :pouch, type: String
  field :belt, type: String
  field :headgear, type: String
  field :footwear, type: String
end
