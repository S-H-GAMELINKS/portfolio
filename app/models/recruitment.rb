class Recruitment < ApplicationRecord
  default_scope -> { order(created_at: :desc)}
  has_many :comments, dependent: :destroy
  belongs_to :user
  has_many :photos
  accepts_nested_attributes_for :photos
end
