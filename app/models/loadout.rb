class Loadout
  include Mongoid::Document

  has_many :photos
  belongs_to :user
  
  #accepts_nested_attributes_for :photos

  field :name, type: String
  field :chestgear, type: String
  field :pouch, type: String
  field :belt, type: String
  field :headgear, type: String
  field :footwear, type: String


end
