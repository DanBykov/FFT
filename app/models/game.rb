class Game < ActiveRecord::Base
  attr_accessible :name, :instructions, :description
  
  belongs_to :category
  
  has_many :comments
  
  has_many :users, :through => :comments
  
  ajaxful_rateable :allow_update => true, :stars => 5
end
