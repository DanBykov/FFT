class Comment < ActiveRecord::Base
  attr_accessible :content, :game_id
  
  belongs_to :user
  belongs_to :game
  
  validates :user_id, presence: true
  validates :game_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  
  default_scope order: 'comments.created_at DESC'
end
