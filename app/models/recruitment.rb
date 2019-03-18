class Recruitment < ApplicationRecord
  default_scope -> { order(created_at: :desc)}
  has_many :comments, dependent: :destroy
  belongs_to :user
 
 
end
