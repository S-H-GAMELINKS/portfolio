class Recruitment < ApplicationRecord
  default_scope -> { order(created_at: :desc)}
  has_many :comments
  belongs_to :user
end
