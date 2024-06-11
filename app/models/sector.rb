class Sector < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :parent, class_name: 'Sector', optional: true
  has_many :children, class_name: 'Sector', foreign_key: 'parent_id'

  validates :name, presence: true
end
